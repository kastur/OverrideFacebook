.class public abstract Lcom/facebook/orca/contacts/picker/AbstractContactPickerListFilter;
.super Lcom/facebook/orca/common/ui/widgets/AbstractCustomFilter;
.source "AbstractContactPickerListFilter.java"

# interfaces
.implements Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;


# instance fields
.field private a:Lcom/facebook/orca/contacts/picker/ContactPickerListFilterReceiver;

.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/users/UserIdentifierKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/AbstractCustomFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/contacts/picker/ContactPickerListFilterReceiver;)V
    .locals 1
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/AbstractContactPickerListFilter;->a:Lcom/facebook/orca/contacts/picker/ContactPickerListFilterReceiver;

    .line 25
    invoke-static {}, Lcom/google/common/collect/Sets;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/AbstractContactPickerListFilter;->b:Ljava/util/Set;

    .line 26
    return-void
.end method

.method public final a(Lcom/google/common/collect/ImmutableList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/PickedUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AbstractContactPickerListFilter;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 32
    if-eqz p1, :cond_0

    .line 33
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/PickedUser;

    .line 34
    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/AbstractContactPickerListFilter;->b:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/facebook/orca/users/PickedUser;->b()Lcom/facebook/orca/users/UserIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserIdentifier;->d()Lcom/facebook/orca/users/UserIdentifierKey;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 37
    :cond_0
    return-void
.end method

.method protected final a(Ljava/lang/CharSequence;Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterResults;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 43
    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterResults;->a:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AbstractContactPickerListFilter;->a:Lcom/facebook/orca/contacts/picker/ContactPickerListFilterReceiver;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerListFilterReceiver;->a(Ljava/lang/CharSequence;Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;)V

    .line 49
    :goto_0
    return-void

    .line 46
    :cond_1
    iget-object v0, p2, Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterResults;->a:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;

    .line 47
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/AbstractContactPickerListFilter;->a:Lcom/facebook/orca/contacts/picker/ContactPickerListFilterReceiver;

    invoke-interface {v1, p1, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerListFilterReceiver;->a(Ljava/lang/CharSequence;Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;)V

    goto :goto_0
.end method

.method protected final a(Lcom/facebook/orca/users/UserIdentifier;)Z
    .locals 2
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AbstractContactPickerListFilter;->b:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 53
    const/4 v0, 0x0

    .line 56
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/AbstractContactPickerListFilter;->b:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/facebook/orca/users/UserIdentifier;->d()Lcom/facebook/orca/users/UserIdentifierKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
