require "administrate/base_dashboard"

class TransactionDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    date: Field::Date,
    material_id: Field::Select.with_options(
      collection: Material.all.map { |x| [x.name, x.id] },
      include_blank: 'Please select...',
      onChange: "Transaction.customFunction",
    ),
    name: Field::String,
    material_name: Field::String,
    price: Field::Number,
    quantity: Field::Number,
    # transaction_type_id: Field::Number,
    transaction_type_id: Field::Select.with_options(collection: TransactionType.all.map { |x| [x.name, x.id] }),
    transaction_type_name: Field::String,
    # unit_id: Field::Number,
    unit_id: Field::Select.with_options(collection: Unit.all.map { |x| [x.name, x.id] }),
    unit_name: Field::String,
    total: Field::Number,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = %i[
    id
    date
    name
    transaction_type_name
    price
    quantity
    unit_name
    total
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = %i[
    id
    date
    name
    material_name
    transaction_type_name
    price
    quantity
    unit_name
    total
    created_at
    updated_at
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = %i[
    date
    transaction_type_id
    name
    material_id
    price
    quantity
    unit_id
  ].freeze

  # COLLECTION_FILTERS
  # a hash that defines filters that can be used while searching via the search
  # field of the dashboard.
  #
  # For example to add an option to search for open resources by typing "open:"
  # in the search field:
  #
  #   COLLECTION_FILTERS = {
  #     open: ->(resources) { resources.where(open: true) }
  #   }.freeze
  COLLECTION_FILTERS = {}.freeze

  # Overwrite this method to customize how transactions are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(transaction)
    "Transaction ##{transaction.name}"
  end
end
