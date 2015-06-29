Incarnator::Engine.routes.draw do
  devise_for :accounts, class_name: "Incarnator::Account", module: :devise
end
