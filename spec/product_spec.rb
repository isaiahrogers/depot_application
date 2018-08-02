require "rails_helper"

RSpec.describe "product creation" do

  context "with price < 0.01" do
    let(:product) { build :product, price: '0' }

    it "does not write to database" do
        expect(product).to be_invalid
      end
    end

    context "with missing title" do
      let(:product) { build :product, title: '' }

      it "does not write to database" do
        expect(product).to be_invalid
      end
    end

    context "with missing description" do
      let(:product) { build :product, description: '' }

      it "does not write to database" do
        expect(product).to be_invalid
      end
    end

    context "with missing image_url" do
      let(:product) { build :product, image_url: '' }

      it "does not write to database" do
        expect(product).to be_invalid
      end
    end

    context "with missing price" do
      let(:product) { build :product, price: '' }

      it "does not write to database" do
        expect(product).to be_invalid
      end
    end

    context "with invalid image_url extension" do
      let(:product) { build :product, image_url: 'image.pdf' }

      it "does not write to database" do
        expect(product).to be_invalid
      end
    end
end
# RSpec.describe Product, type: :model do
#     let(:product) { build :product  }
#
#   describe "product creation" do
#
#     context "with " do
#
#       it "should be present" do
#
#         it { is_expected.to validate_presence_of(:title)  }
#
#         it { is_expected.to validate_presence_of(:description)  }
#
#         it { is_expected.to validate_presence_of(:price)  }
#
#         it { is_expected.to validate_presence_of(:image_url)  }
#
#     it "should be unique" do
#
#         should validate_uniqueness_of(:title)
#       end
#     end
#   end
# end
# end
