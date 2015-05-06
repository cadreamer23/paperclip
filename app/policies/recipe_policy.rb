class RecipePolicy
	attr_reader :user, :recipe

	def initialize(user, recipe)
		@user = user
		@recipe = recipe
	end

	def show?
		recipe.user_id == user.try(:id)
	end

	def edit?
		show?
	end

	def update?
		show?
	end

	def destroy?
		show?
	end
end