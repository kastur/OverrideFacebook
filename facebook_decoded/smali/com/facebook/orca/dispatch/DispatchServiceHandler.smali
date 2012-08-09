.class public Lcom/facebook/orca/dispatch/DispatchServiceHandler;
.super Lcom/facebook/orca/server/AbstractOrcaServiceHandlerFilter;
.source "DispatchServiceHandler.java"


# instance fields
.field private final a:Lcom/facebook/orca/server/FilterChainLink;

.field private final b:Lcom/facebook/orca/server/FilterChainLink;

.field private final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/orca/sms/MmsSmsServiceHandler;Lcom/facebook/orca/protocol/WebServiceHandler;Ljavax/inject/Provider;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/sms/MmsSmsServiceHandler;",
            "Lcom/facebook/orca/protocol/WebServiceHandler;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    const-string v0, "DispatchServiceHandler"

    invoke-direct {p0, v0}, Lcom/facebook/orca/server/AbstractOrcaServiceHandlerFilter;-><init>(Ljava/lang/String;)V

    .line 55
    new-instance v0, Lcom/facebook/orca/server/FilterChainLink;

    new-instance v1, Lcom/facebook/orca/server/TerminatingHandler;

    invoke-direct {v1}, Lcom/facebook/orca/server/TerminatingHandler;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/facebook/orca/server/FilterChainLink;-><init>(Lcom/facebook/orca/server/OrcaServiceHandler$Filter;Lcom/facebook/orca/server/OrcaServiceHandler;)V

    iput-object v0, p0, Lcom/facebook/orca/dispatch/DispatchServiceHandler;->b:Lcom/facebook/orca/server/FilterChainLink;

    .line 58
    new-instance v0, Lcom/facebook/orca/server/FilterChainLink;

    new-instance v1, Lcom/facebook/orca/server/TerminatingHandler;

    invoke-direct {v1}, Lcom/facebook/orca/server/TerminatingHandler;-><init>()V

    invoke-direct {v0, p2, v1}, Lcom/facebook/orca/server/FilterChainLink;-><init>(Lcom/facebook/orca/server/OrcaServiceHandler$Filter;Lcom/facebook/orca/server/OrcaServiceHandler;)V

    iput-object v0, p0, Lcom/facebook/orca/dispatch/DispatchServiceHandler;->a:Lcom/facebook/orca/server/FilterChainLink;

    .line 61
    iput-object p3, p0, Lcom/facebook/orca/dispatch/DispatchServiceHandler;->c:Ljavax/inject/Provider;

    .line 62
    return-void
.end method

.method private static a(Lcom/facebook/orca/server/ThreadCriteria;)Z
    .locals 2
    .parameter

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/facebook/orca/server/ThreadCriteria;->b()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/orca/server/ThreadCriteria;->b()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserKey;->a()Lcom/facebook/orca/users/User$Type;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/users/User$Type;->PHONE_NUMBER:Lcom/facebook/orca/users/User$Type;

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/server/ThreadCriteria;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/facebook/orca/server/ThreadCriteria;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/threads/MessagingIdUtil;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final A(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 344
    iget-object v0, p0, Lcom/facebook/orca/dispatch/DispatchServiceHandler;->a:Lcom/facebook/orca/server/FilterChainLink;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/server/FilterChainLink;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected final B(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 351
    iget-object v0, p0, Lcom/facebook/orca/dispatch/DispatchServiceHandler;->a:Lcom/facebook/orca/server/FilterChainLink;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/server/FilterChainLink;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected final C(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 365
    iget-object v0, p0, Lcom/facebook/orca/dispatch/DispatchServiceHandler;->a:Lcom/facebook/orca/server/FilterChainLink;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/server/FilterChainLink;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected final D(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 372
    iget-object v0, p0, Lcom/facebook/orca/dispatch/DispatchServiceHandler;->a:Lcom/facebook/orca/server/FilterChainLink;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/server/FilterChainLink;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected final E(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 395
    iget-object v0, p0, Lcom/facebook/orca/dispatch/DispatchServiceHandler;->a:Lcom/facebook/orca/server/FilterChainLink;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/server/FilterChainLink;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected final F(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 403
    iget-object v0, p0, Lcom/facebook/orca/dispatch/DispatchServiceHandler;->a:Lcom/facebook/orca/server/FilterChainLink;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/server/FilterChainLink;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 69
    const-string v1, "fetchThreadListParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadListParams;

    .line 70
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadListParams;->b()Lcom/facebook/orca/threads/FolderName;

    move-result-object v1

    .line 71
    sget-object v0, Lcom/facebook/orca/threads/FolderName;->a:Lcom/facebook/orca/threads/FolderName;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/FolderName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/orca/threads/FolderName;->b:Lcom/facebook/orca/threads/FolderName;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/FolderName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/dispatch/DispatchServiceHandler;->a:Lcom/facebook/orca/server/FilterChainLink;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/server/FilterChainLink;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 77
    :goto_0
    return-object v0

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/dispatch/DispatchServiceHandler;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/facebook/orca/threads/FolderName;->c:Lcom/facebook/orca/threads/FolderName;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/FolderName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    iget-object v0, p0, Lcom/facebook/orca/dispatch/DispatchServiceHandler;->b:Lcom/facebook/orca/server/FilterChainLink;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/server/FilterChainLink;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    goto :goto_0

    .line 79
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Trying to fetch an unknown Folder: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/facebook/orca/threads/FolderName;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final b(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 87
    const-string v1, "fetchMoreThreadsParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchMoreThreadsParams;

    .line 88
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchMoreThreadsParams;->a()Lcom/facebook/orca/threads/FolderName;

    move-result-object v1

    .line 89
    sget-object v0, Lcom/facebook/orca/threads/FolderName;->a:Lcom/facebook/orca/threads/FolderName;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/FolderName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/orca/threads/FolderName;->b:Lcom/facebook/orca/threads/FolderName;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/FolderName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/dispatch/DispatchServiceHandler;->a:Lcom/facebook/orca/server/FilterChainLink;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/server/FilterChainLink;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 95
    :goto_0
    return-object v0

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/dispatch/DispatchServiceHandler;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/facebook/orca/threads/FolderName;->c:Lcom/facebook/orca/threads/FolderName;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/FolderName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/facebook/orca/dispatch/DispatchServiceHandler;->b:Lcom/facebook/orca/server/FilterChainLink;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/server/FilterChainLink;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    goto :goto_0

    .line 97
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Trying to fetch an unknown Folder: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/facebook/orca/threads/FolderName;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final c(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 132
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 133
    const-string v1, "fetchThreadParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadParams;

    .line 134
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadParams;->a()Lcom/facebook/orca/server/ThreadCriteria;

    move-result-object v0

    .line 135
    invoke-static {v0}, Lcom/facebook/orca/dispatch/DispatchServiceHandler;->a(Lcom/facebook/orca/server/ThreadCriteria;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/facebook/orca/dispatch/DispatchServiceHandler;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/facebook/orca/dispatch/DispatchServiceHandler;->b:Lcom/facebook/orca/server/FilterChainLink;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/server/FilterChainLink;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 142
    :goto_0
    return-object v0

    .line 139
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Trying to fetch an SMS Thread when GK is off"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/dispatch/DispatchServiceHandler;->a:Lcom/facebook/orca/server/FilterChainLink;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/server/FilterChainLink;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    goto :goto_0
.end method

.method protected final d(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 188
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 189
    const-string v1, "createThreadParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/CreateThreadParams;

    .line 191
    iget-object v1, p0, Lcom/facebook/orca/dispatch/DispatchServiceHandler;->c:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 192
    const/4 v1, 0x0

    .line 193
    invoke-virtual {v0}, Lcom/facebook/orca/server/CreateThreadParams;->d()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v1

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/users/PickedUser;

    .line 194
    invoke-virtual {v1}, Lcom/facebook/orca/users/PickedUser;->e()Lcom/facebook/orca/users/UserWithIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/users/UserWithIdentifier;->b()Lcom/facebook/orca/users/UserIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/users/UserIdentifier;->c()Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    move-result-object v1

    sget-object v4, Lcom/facebook/orca/users/UserIdentifier$IdentifierType;->PHONE:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    if-ne v1, v4, :cond_4

    .line 196
    add-int/lit8 v1, v2, 0x1

    :goto_1
    move v2, v1

    goto :goto_0

    .line 199
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/orca/server/CreateThreadParams;->d()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-ne v0, v5, :cond_1

    if-ne v2, v5, :cond_1

    .line 200
    iget-object v0, p0, Lcom/facebook/orca/dispatch/DispatchServiceHandler;->b:Lcom/facebook/orca/server/FilterChainLink;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/server/FilterChainLink;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 207
    :goto_2
    return-object v0

    .line 201
    :cond_1
    if-nez v2, :cond_2

    .line 202
    iget-object v0, p0, Lcom/facebook/orca/dispatch/DispatchServiceHandler;->a:Lcom/facebook/orca/server/FilterChainLink;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/server/FilterChainLink;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    goto :goto_2

    .line 204
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Cannot create a thread with a phone number and any other contact"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/dispatch/DispatchServiceHandler;->a:Lcom/facebook/orca/server/FilterChainLink;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/server/FilterChainLink;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method protected final f(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 150
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 151
    const-string v1, "outgoingMessage"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    .line 152
    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-static {v0}, Lcom/facebook/orca/threads/MessagingIdUtil;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/facebook/orca/dispatch/DispatchServiceHandler;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/facebook/orca/dispatch/DispatchServiceHandler;->b:Lcom/facebook/orca/server/FilterChainLink;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/server/FilterChainLink;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 160
    :goto_0
    return-object v0

    .line 157
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Trying to send an SMS Thread when GK is off"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/dispatch/DispatchServiceHandler;->a:Lcom/facebook/orca/server/FilterChainLink;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/server/FilterChainLink;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    goto :goto_0
.end method

.method protected final g(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 168
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 169
    const-string v1, "addMembersParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/AddMembersParams;

    .line 170
    invoke-virtual {v0}, Lcom/facebook/orca/server/AddMembersParams;->a()Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-static {v0}, Lcom/facebook/orca/threads/MessagingIdUtil;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/facebook/orca/dispatch/DispatchServiceHandler;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/facebook/orca/dispatch/DispatchServiceHandler;->b:Lcom/facebook/orca/server/FilterChainLink;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/server/FilterChainLink;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 180
    :goto_0
    return-object v0

    .line 177
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Trying to add a member to an SMS Thread when GK is off"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/dispatch/DispatchServiceHandler;->a:Lcom/facebook/orca/server/FilterChainLink;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/server/FilterChainLink;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    goto :goto_0
.end method

.method protected final h(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 242
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 243
    const-string v1, "removeMemberParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/RemoveMemberParams;

    .line 244
    invoke-virtual {v0}, Lcom/facebook/orca/server/RemoveMemberParams;->a()Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-static {v0}, Lcom/facebook/orca/threads/MessagingIdUtil;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/facebook/orca/dispatch/DispatchServiceHandler;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/facebook/orca/dispatch/DispatchServiceHandler;->b:Lcom/facebook/orca/server/FilterChainLink;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/server/FilterChainLink;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 254
    :goto_0
    return-object v0

    .line 251
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Trying to remove a member from an SMS Thread when GK is off"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/dispatch/DispatchServiceHandler;->a:Lcom/facebook/orca/server/FilterChainLink;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/server/FilterChainLink;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    goto :goto_0
.end method

.method protected final i(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 262
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 263
    const-string v1, "markThreadParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/MarkThreadParams;

    .line 264
    invoke-virtual {v0}, Lcom/facebook/orca/server/MarkThreadParams;->a()Ljava/lang/String;

    move-result-object v0

    .line 265
    invoke-static {v0}, Lcom/facebook/orca/threads/MessagingIdUtil;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/facebook/orca/dispatch/DispatchServiceHandler;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/facebook/orca/dispatch/DispatchServiceHandler;->b:Lcom/facebook/orca/server/FilterChainLink;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/server/FilterChainLink;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 272
    :goto_0
    return-object v0

    .line 269
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Trying to mark an SMS Thread when GK is off"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/dispatch/DispatchServiceHandler;->a:Lcom/facebook/orca/server/FilterChainLink;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/server/FilterChainLink;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    goto :goto_0
.end method

.method protected final l(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 280
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 281
    const-string v1, "deleteThreadParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/DeleteThreadParams;

    .line 282
    invoke-virtual {v0}, Lcom/facebook/orca/server/DeleteThreadParams;->a()Ljava/lang/String;

    move-result-object v0

    .line 283
    invoke-static {v0}, Lcom/facebook/orca/threads/MessagingIdUtil;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/facebook/orca/dispatch/DispatchServiceHandler;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/facebook/orca/dispatch/DispatchServiceHandler;->b:Lcom/facebook/orca/server/FilterChainLink;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/server/FilterChainLink;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 290
    :goto_0
    return-object v0

    .line 287
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Trying to delete an SMS Thread when GK is off"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/dispatch/DispatchServiceHandler;->a:Lcom/facebook/orca/server/FilterChainLink;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/server/FilterChainLink;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    goto :goto_0
.end method

.method protected final m(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 298
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 299
    const-string v1, "deleteMessagesParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/DeleteMessagesParams;

    .line 300
    invoke-virtual {v0}, Lcom/facebook/orca/server/DeleteMessagesParams;->a()Ljava/lang/String;

    move-result-object v0

    .line 301
    invoke-static {v0}, Lcom/facebook/orca/threads/MessagingIdUtil;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/facebook/orca/dispatch/DispatchServiceHandler;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/facebook/orca/dispatch/DispatchServiceHandler;->b:Lcom/facebook/orca/server/FilterChainLink;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/server/FilterChainLink;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 308
    :goto_0
    return-object v0

    .line 305
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Trying to delete the messages of an SMS Thread when GK is off"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/dispatch/DispatchServiceHandler;->a:Lcom/facebook/orca/server/FilterChainLink;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/server/FilterChainLink;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    goto :goto_0
.end method

.method protected final n(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 316
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 317
    const-string v1, "modifyThreadParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/ModifyThreadParams;

    .line 318
    invoke-virtual {v0}, Lcom/facebook/orca/server/ModifyThreadParams;->a()Ljava/lang/String;

    move-result-object v0

    .line 319
    invoke-static {v0}, Lcom/facebook/orca/threads/MessagingIdUtil;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/facebook/orca/dispatch/DispatchServiceHandler;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/facebook/orca/dispatch/DispatchServiceHandler;->b:Lcom/facebook/orca/server/FilterChainLink;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/server/FilterChainLink;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 326
    :goto_0
    return-object v0

    .line 323
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Trying to modify an SMS Thread when GK is off"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/dispatch/DispatchServiceHandler;->a:Lcom/facebook/orca/server/FilterChainLink;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/server/FilterChainLink;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    goto :goto_0
.end method

.method protected final p(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 334
    iget-object v0, p0, Lcom/facebook/orca/dispatch/DispatchServiceHandler;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/facebook/orca/dispatch/DispatchServiceHandler;->b:Lcom/facebook/orca/server/FilterChainLink;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/server/FilterChainLink;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 337
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/dispatch/DispatchServiceHandler;->a:Lcom/facebook/orca/server/FilterChainLink;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/server/FilterChainLink;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    goto :goto_0
.end method

.method protected final r(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 358
    iget-object v0, p0, Lcom/facebook/orca/dispatch/DispatchServiceHandler;->a:Lcom/facebook/orca/server/FilterChainLink;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/server/FilterChainLink;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected final s(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 380
    iget-object v0, p0, Lcom/facebook/orca/dispatch/DispatchServiceHandler;->a:Lcom/facebook/orca/server/FilterChainLink;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/server/FilterChainLink;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected final t(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 387
    iget-object v0, p0, Lcom/facebook/orca/dispatch/DispatchServiceHandler;->a:Lcom/facebook/orca/server/FilterChainLink;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/server/FilterChainLink;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected final u(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 222
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 223
    const-string v1, "fetchMoreMessagesParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchMoreMessagesParams;

    .line 225
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchMoreMessagesParams;->a()Lcom/facebook/orca/server/ThreadCriteria;

    move-result-object v0

    .line 226
    invoke-static {v0}, Lcom/facebook/orca/dispatch/DispatchServiceHandler;->a(Lcom/facebook/orca/server/ThreadCriteria;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/facebook/orca/dispatch/DispatchServiceHandler;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/facebook/orca/dispatch/DispatchServiceHandler;->b:Lcom/facebook/orca/server/FilterChainLink;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/server/FilterChainLink;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 234
    :goto_0
    return-object v0

    .line 231
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Trying to fetch more messages of an SMS Thread when GK is off"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/dispatch/DispatchServiceHandler;->a:Lcom/facebook/orca/server/FilterChainLink;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/server/FilterChainLink;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    goto :goto_0
.end method

.method protected final v(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/facebook/orca/dispatch/DispatchServiceHandler;->a:Lcom/facebook/orca/server/FilterChainLink;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/server/FilterChainLink;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected final w(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcom/facebook/orca/dispatch/DispatchServiceHandler;->a:Lcom/facebook/orca/server/FilterChainLink;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/server/FilterChainLink;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected final x(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/facebook/orca/dispatch/DispatchServiceHandler;->a:Lcom/facebook/orca/server/FilterChainLink;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/server/FilterChainLink;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected final y(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/facebook/orca/dispatch/DispatchServiceHandler;->a:Lcom/facebook/orca/server/FilterChainLink;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/server/FilterChainLink;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected final z(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 215
    iget-object v0, p0, Lcom/facebook/orca/dispatch/DispatchServiceHandler;->a:Lcom/facebook/orca/server/FilterChainLink;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/server/FilterChainLink;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method
