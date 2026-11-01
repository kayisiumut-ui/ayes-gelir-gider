-- Run in your own Supabase project SQL editor.
create table if not exists public.ledger_entries (
 id uuid primary key,
 user_id uuid not null references auth.users(id) on delete cascade,
 account text not null check (account in ('is','ev')),
 entry_type text not null check (entry_type in ('gelir','gider')),
 amount numeric(14,2) not null check (amount > 0),
 entry_date date not null,
 category text not null,
 note text not null default '',
 updated_at timestamptz not null default now(),
 deleted_at timestamptz
);
create index if not exists ledger_entries_user_idx on public.ledger_entries(user_id,updated_at);
alter table public.ledger_entries enable row level security;
revoke all on public.ledger_entries from anon, authenticated;
grant select,insert,update,delete on public.ledger_entries to authenticated;
create policy "ledger_select_own" on public.ledger_entries for select to authenticated using ((select auth.uid()) = user_id);
create policy "ledger_insert_own" on public.ledger_entries for insert to authenticated with check ((select auth.uid()) = user_id);
create policy "ledger_update_own" on public.ledger_entries for update to authenticated using ((select auth.uid()) = user_id) with check ((select auth.uid()) = user_id);
create policy "ledger_delete_own" on public.ledger_entries for delete to authenticated using ((select auth.uid()) = user_id);
