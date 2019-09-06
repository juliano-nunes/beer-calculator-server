class InsertBeers < ActiveRecord::Migration[6.0]
  def change
    execute "insert into beers (style, min_temp, max_temp, created_at, updated_at) values('Weissbier', -1, 3, date('now'), date('now'))"
    execute "insert into beers (style, min_temp, max_temp, created_at, updated_at) values('Pilsens', -2, 4, date('now'), date('now'))"
    execute "insert into beers (style, min_temp, max_temp, created_at, updated_at) values('Weizenbier', -4, 6, date('now'), date('now'))"
    execute "insert into beers (style, min_temp, max_temp, created_at, updated_at) values('Red ale', -5, 5, date('now'), date('now'))"
    execute "insert into beers (style, min_temp, max_temp, created_at, updated_at) values('India pale ale', -6, 7, date('now'), date('now'))"
    execute "insert into beers (style, min_temp, max_temp, created_at, updated_at) values('IPA', -7, 10, date('now'), date('now'))"
    execute "insert into beers (style, min_temp, max_temp, created_at, updated_at) values('Dunkel', -8, 2, date('now'), date('now'))"
    execute "insert into beers (style, min_temp, max_temp, created_at, updated_at) values('Imperial Stouts', -10, 13, date('now'), date('now'))"
    execute "insert into beers (style, min_temp, max_temp, created_at, updated_at) values('Brown ale', 0, 14, date('now'), date('now'))"
  end
end
