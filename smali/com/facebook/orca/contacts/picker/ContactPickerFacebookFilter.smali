.class public Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;
.super Ljava/lang/Object;
.source "ContactPickerFacebookFilter.java"

# interfaces
.implements Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;


# instance fields
.field private final a:Landroid/content/res/Resources;

.field private final b:Lcom/facebook/orca/contacts/picker/ContactPickerFriendFilter;

.field private final c:Lcom/facebook/orca/contacts/picker/ContactPickerFriendsOfFriendsFilter;

.field private d:Lcom/facebook/orca/contacts/picker/ContactPickerListFilterReceiver;

.field private e:Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;

.field private f:Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;

.field private g:Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;

.field private h:Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;

.field private i:Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterListener;

.field private j:Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/facebook/orca/contacts/picker/ContactPickerFriendFilter;Lcom/facebook/orca/contacts/picker/ContactPickerFriendsOfFriendsFilter;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;->FINISHED:Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;->j:Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;

    .line 39
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;->a:Landroid/content/res/Resources;

    .line 40
    iput-object p2, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;->b:Lcom/facebook/orca/contacts/picker/ContactPickerFriendFilter;

    .line 41
    iput-object p3, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;->c:Lcom/facebook/orca/contacts/picker/ContactPickerFriendsOfFriendsFilter;

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;)Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;->g:Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;)Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;->e:Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;

    return-object p1
.end method

.method private static a(Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;Ljava/util/Set;)Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/users/UserIdentifierKey;",
            ">;)",
            "Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;"
        }
    .end annotation

    .prologue
    .line 158
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 159
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerRow;

    .line 160
    instance-of v3, v0, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    if-eqz v3, :cond_1

    .line 161
    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    .line 162
    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;->a()Lcom/facebook/orca/users/UserWithIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/orca/users/UserWithIdentifier;->b()Lcom/facebook/orca/users/UserIdentifier;

    move-result-object v3

    .line 163
    invoke-virtual {v3}, Lcom/facebook/orca/users/UserIdentifier;->d()Lcom/facebook/orca/users/UserIdentifierKey;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 164
    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 167
    :cond_1
    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 170
    :cond_2
    new-instance v0, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;

    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;-><init>(Ljava/lang/String;Lcom/google/common/collect/ImmutableList;)V

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;
    .locals 4
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;->e:Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;->f:Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;

    if-nez v0, :cond_0

    .line 130
    const/4 v0, 0x0

    .line 152
    :goto_0
    return-object v0

    .line 133
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Sets;->a()Ljava/util/HashSet;

    move-result-object v0

    .line 134
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 136
    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;->e:Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;->e:Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;

    invoke-virtual {v2}, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;->b()I

    move-result v2

    if-lez v2, :cond_1

    .line 137
    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;->e:Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;

    invoke-virtual {v2}, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;->a(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList$Builder;Ljava/util/Set;)V

    .line 140
    :cond_1
    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;->f:Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;

    if-eqz v2, :cond_3

    .line 141
    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;->f:Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;

    invoke-virtual {v2}, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 143
    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;->f:Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;

    invoke-static {v2, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;->a(Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;Ljava/util/Set;)Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;->f:Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;

    .line 145
    :cond_2
    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;->f:Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;

    invoke-virtual {v2}, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;->b()I

    move-result v2

    if-lez v2, :cond_3

    .line 146
    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;->a:Landroid/content/res/Resources;

    sget v3, Lcom/facebook/orca/R$string;->friends_of_friends_section_header:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 147
    new-instance v3, Lcom/facebook/orca/contacts/picker/ContactPickerSectionHeaderRow;

    invoke-direct {v3, v2}, Lcom/facebook/orca/contacts/picker/ContactPickerSectionHeaderRow;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 148
    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;->f:Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;

    invoke-virtual {v2}, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;->a(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList$Builder;Ljava/util/Set;)V

    .line 152
    :cond_3
    new-instance v0, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;-><init>(Ljava/lang/String;Lcom/google/common/collect/ImmutableList;)V

    goto :goto_0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 105
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;->FINISHED:Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;

    .line 106
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;->h:Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;

    sget-object v2, Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;->FILTERING:Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;->g:Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;

    sget-object v2, Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;->FILTERING:Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;

    if-ne v1, v2, :cond_1

    .line 108
    :cond_0
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;->FILTERING:Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;->j:Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;

    if-eq v0, v1, :cond_2

    .line 111
    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;->j:Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;

    .line 112
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;->i:Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterListener;

    if-eqz v0, :cond_2

    .line 113
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;->i:Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterListener;

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;->j:Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;

    invoke-interface {v0, v1}, Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterListener;->a(Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;)V

    .line 116
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;->a()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;->b(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static a(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList$Builder;Ljava/util/Set;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/contacts/picker/ContactPickerRow;",
            ">;",
            "Lcom/google/common/collect/ImmutableList$Builder",
            "<",
            "Lcom/facebook/orca/contacts/picker/ContactPickerRow;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/users/UserIdentifierKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerRow;

    .line 178
    instance-of v2, v0, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    if-eqz v2, :cond_1

    .line 179
    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    .line 180
    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;->a()Lcom/facebook/orca/users/UserWithIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/users/UserWithIdentifier;->b()Lcom/facebook/orca/users/UserIdentifier;

    move-result-object v2

    .line 181
    invoke-virtual {v2}, Lcom/facebook/orca/users/UserIdentifier;->d()Lcom/facebook/orca/users/UserIdentifierKey;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 182
    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 183
    invoke-virtual {v2}, Lcom/facebook/orca/users/UserIdentifier;->d()Lcom/facebook/orca/users/UserIdentifierKey;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 186
    :cond_1
    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 189
    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;)Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;->h:Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilteringState;

    return-object p1
.end method

.method static synthetic b(Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;)Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;->f:Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;

    return-object p1
.end method

.method private b(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter

    .prologue
    .line 119
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 120
    :goto_0
    invoke-direct {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;->a(Ljava/lang/String;)Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;->d:Lcom/facebook/orca/contacts/picker/ContactPickerListFilterReceiver;

    invoke-interface {v1, p1, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerListFilterReceiver;->a(Ljava/lang/CharSequence;Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;)V

    .line 122
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;->i:Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterListener;

    if-eqz v1, :cond_0

    .line 123
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;->b()I

    move-result v0

    .line 124
    :goto_1
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;->i:Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterListener;

    invoke-interface {v1, v0}, Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterListener;->a(I)V

    .line 126
    :cond_0
    return-void

    .line 119
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 123
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/contacts/picker/ContactPickerListFilterReceiver;)V
    .locals 2
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;->d:Lcom/facebook/orca/contacts/picker/ContactPickerListFilterReceiver;

    .line 46
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;->b:Lcom/facebook/orca/contacts/picker/ContactPickerFriendFilter;

    new-instance v1, Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter$1;-><init>(Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerFriendFilter;->a(Lcom/facebook/orca/contacts/picker/ContactPickerListFilterReceiver;)V

    .line 55
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;->c:Lcom/facebook/orca/contacts/picker/ContactPickerFriendsOfFriendsFilter;

    new-instance v1, Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter$2;-><init>(Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerFriendsOfFriendsFilter;->a(Lcom/facebook/orca/contacts/picker/ContactPickerListFilterReceiver;)V

    .line 64
    return-void
.end method

.method public final a(Lcom/google/common/collect/ImmutableList;)V
    .locals 1
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
    .line 68
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;->b:Lcom/facebook/orca/contacts/picker/ContactPickerFriendFilter;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerFriendFilter;->a(Lcom/google/common/collect/ImmutableList;)V

    .line 69
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;->c:Lcom/facebook/orca/contacts/picker/ContactPickerFriendsOfFriendsFilter;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerFriendsOfFriendsFilter;->a(Lcom/google/common/collect/ImmutableList;)V

    .line 70
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0, v0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;->a(Ljava/lang/CharSequence;Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterListener;)V

    .line 75
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterListener;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;->b:Lcom/facebook/orca/contacts/picker/ContactPickerFriendFilter;

    new-instance v1, Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter$3;

    invoke-direct {v1, p0}, Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter$3;-><init>(Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;)V

    invoke-virtual {v0, p1, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerFriendFilter;->a(Ljava/lang/CharSequence;Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterListener;)V

    .line 90
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;->c:Lcom/facebook/orca/contacts/picker/ContactPickerFriendsOfFriendsFilter;

    new-instance v1, Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter$4;

    invoke-direct {v1, p0}, Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter$4;-><init>(Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;)V

    invoke-virtual {v0, p1, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerFriendsOfFriendsFilter;->a(Ljava/lang/CharSequence;Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterListener;)V

    .line 101
    iput-object p2, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFacebookFilter;->i:Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterListener;

    .line 102
    return-void
.end method
