#this is example deep provider

#provider: handle automatic InheritWidget: support past value donw the tree.
ex: in child we can get value of object that grandpa pass into provider. - don't care about rerender (state of object).

#ChangeNotifierProvider: likely provider, but it care about rerender (state of object)

#The Consumer widget has two main purposes:

It allows obtaining a value from a provider when we don't have a BuildContext that is a descendant of said provider, and therefore cannot use Provider.of.

It helps with performance optimization by providing more granular rebuilds.

-builder rerender whenever state change, and child is only create time, child can pass inside to builder, that why it help with performace optimazion.

#inheritedProvider
A generic implementation of an InheritedWidget.

Any descendant of this widget can obtain value using Provider.of.

Do not use this class directly unless you are creating a custom "Provider". Instead use Provider class, which wraps InheritedProvider.
