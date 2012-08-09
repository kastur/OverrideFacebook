.class public Lcom/facebook/orca/contacts/picker/ContactPickerFriendsOfFriendsFilter;
.super Lcom/facebook/orca/contacts/picker/AbstractContactPickerListFilter;
.source "ContactPickerFriendsOfFriendsFilter.java"


# instance fields
.field private final a:Lcom/facebook/orca/protocol/base/SingleMethodRunner;

.field private final b:Lcom/facebook/orca/protocol/methods/SearchUsersMethod;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/protocol/base/SingleMethodRunner;Lcom/facebook/orca/protocol/methods/SearchUsersMethod;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/AbstractContactPickerListFilter;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFriendsOfFriendsFilter;->a:Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 37
    iput-object p2, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFriendsOfFriendsFilter;->b:Lcom/facebook/orca/protocol/methods/SearchUsersMethod;

    .line 38
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/orca/users/UserKey;",
            "Lcom/facebook/orca/users/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFriendsOfFriendsFilter;->a:Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFriendsOfFriendsFilter;->b:Lcom/facebook/orca/protocol/methods/SearchUsersMethod;

    invoke-virtual {v0, v1, p1}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 80
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    .line 82
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->x()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 83
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v2

    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 86
    :catch_0
    move-exception v0

    .line 87
    const-string v1, "orca:ContactPickerFriendsOfFriendsFilter"

    const-string v2, "Failed to get result"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Ljava/util/List;Lcom/google/common/collect/ImmutableList$Builder;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;",
            "Lcom/google/common/collect/ImmutableList$Builder",
            "<",
            "Lcom/facebook/orca/contacts/picker/ContactPickerRow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    .line 95
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->g()Lcom/facebook/orca/users/UserFbidIdentifier;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/facebook/orca/contacts/picker/ContactPickerFriendsOfFriendsFilter;->a(Lcom/facebook/orca/users/UserIdentifier;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 96
    new-instance v2, Lcom/facebook/orca/users/UserWithIdentifier;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->g()Lcom/facebook/orca/users/UserFbidIdentifier;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/facebook/orca/users/UserWithIdentifier;-><init>(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/UserIdentifier;)V

    .line 98
    new-instance v0, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    sget-object v3, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;->TWO_LINE:Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;-><init>(Lcom/facebook/orca/users/UserWithIdentifier;Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;Z)V

    invoke-virtual {p2, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 101
    :cond_1
    return-void
.end method


# virtual methods
.method protected final b(Ljava/lang/CharSequence;)Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterResults;
    .locals 5
    .parameter

    .prologue
    .line 42
    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/Tracer;->a(J)V

    .line 43
    const-string v0, "ContactPickerFriendFilter.Filtering"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v1

    .line 44
    new-instance v2, Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterResults;

    invoke-direct {v2}, Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterResults;-><init>()V

    .line 46
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 47
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 48
    invoke-static {}, Lcom/google/common/collect/Maps;->b()Ljava/util/LinkedHashMap;

    move-result-object v3

    .line 49
    invoke-direct {p0, v0, v3}, Lcom/facebook/orca/contacts/picker/ContactPickerFriendsOfFriendsFilter;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 51
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v3

    .line 52
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v4

    .line 53
    invoke-direct {p0, v3, v4}, Lcom/facebook/orca/contacts/picker/ContactPickerFriendsOfFriendsFilter;->a(Ljava/util/List;Lcom/google/common/collect/ImmutableList$Builder;)V

    .line 54
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 55
    new-instance v4, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;

    invoke-direct {v4, v0, v3}, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;-><init>(Ljava/lang/String;Lcom/google/common/collect/ImmutableList;)V

    .line 56
    iput-object v4, v2, Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterResults;->a:Ljava/lang/Object;

    .line 57
    invoke-virtual {v4}, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;->b()I

    move-result v0

    iput v0, v2, Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterResults;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_1
    invoke-virtual {v1}, Lcom/facebook/orca/debug/Tracer;->c()J

    .line 68
    const-string v0, "orca:ContactPickerFriendsOfFriendsFilter"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->b(Ljava/lang/String;)V

    .line 70
    :goto_2
    return-object v2

    .line 46
    :cond_0
    :try_start_1
    const-string v0, ""

    goto :goto_0

    .line 59
    :cond_1
    const/4 v0, 0x0

    iput-object v0, v2, Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterResults;->a:Ljava/lang/Object;

    .line 60
    const/4 v0, -0x1

    iput v0, v2, Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterResults;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 62
    :catch_0
    move-exception v0

    .line 63
    :try_start_2
    const-string v3, "orca:ContactPickerFriendsOfFriendsFilter"

    const-string v4, "Exception during filtering"

    invoke-static {v3, v4, v0}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    sget-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;->a:Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;

    iput-object v0, v2, Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterResults;->a:Ljava/lang/Object;

    .line 65
    const/4 v0, 0x0

    iput v0, v2, Lcom/facebook/orca/common/ui/widgets/CustomFilter$FilterResults;->b:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    invoke-virtual {v1}, Lcom/facebook/orca/debug/Tracer;->c()J

    .line 68
    const-string v0, "orca:ContactPickerFriendsOfFriendsFilter"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 67
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/facebook/orca/debug/Tracer;->c()J

    .line 68
    const-string v1, "orca:ContactPickerFriendsOfFriendsFilter"

    invoke-static {v1}, Lcom/facebook/orca/debug/Tracer;->b(Ljava/lang/String;)V

    .line 69
    throw v0
.end method
