require 'rails_helper'

RSpec.feature "Vendors", type: :feature do
  scenario "the vendors index page contains all vendors" do
    Vendor.create(name: "jeff")
    Vendor.create(name: "ikem")
    Vendor.create(name: "nad")

    visit vendor_path

    expect(page).to have_selector("h1", "Vendors And Their Suyas")
    expect(page).to have_content("jeff")
    expect(page).to have_content("ikem")
    expect(page).to have_content("nad")

    expect(page).to have_selector("div.vendor", count: 3)
  end
end
