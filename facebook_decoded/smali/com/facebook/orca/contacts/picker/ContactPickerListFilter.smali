.class public interface abstract Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;
.super Ljava/lang/Object;
.source "ContactPickerListFilter.java"

# interfaces
.implements Lcom/facebook/orca/common/ui/widgets/CustomFilter;


# virtual methods
.method public abstract a(Lcom/facebook/orca/contacts/picker/ContactPickerListFilterReceiver;)V
.end method

.method public abstract a(Lcom/google/common/collect/ImmutableList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/PickedUser;",
            ">;)V"
        }
    .end annotation
.end method
