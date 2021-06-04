require 'rails_helper'

RSpec.describe "Homes", type: :system do
  describe 'トップページ' do
   context '表示'do
      before do
        visit root_path
      end

      it '飯プロという文字列が存在するか'do
        expect(page).to have_content '飯プロ'
      end

      it '正しいタイトルが表示されるか'do
        expect(page).to have_title full_title
      end
    end
  end


  describe '概要ページ'
    before do
     visit about_path
    end

    it '飯プロとは?の文字列が存在しているか'do
      expect(page).to have_content '飯プロとは?'
    end

    it '正しいタイトルが表示されるか'do
      expect(page).to have_title full_title('飯プロとは?')
    end
  end


