.class final enum Lcom/facebook/katana/service/method/PostLoginSyncRequest$DataStoreClient;
.super Ljava/lang/Enum;
.source "PostLoginSyncRequest.java"

# interfaces
.implements Lcom/facebook/katana/binding/SimpleManagedDataStore$Client;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/katana/service/method/PostLoginSyncRequest$DataStoreClient;",
        ">;",
        "Lcom/facebook/katana/binding/SimpleManagedDataStore$Client",
        "<",
        "Lcom/facebook/katana/service/method/PostLoginSyncRequest$None;",
        "Lcom/facebook/katana/service/method/PostLoginSyncRequest$None;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/katana/service/method/PostLoginSyncRequest$DataStoreClient;

.field public static final enum INSTANCE:Lcom/facebook/katana/service/method/PostLoginSyncRequest$DataStoreClient;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 59
    new-instance v0, Lcom/facebook/katana/service/method/PostLoginSyncRequest$DataStoreClient;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/service/method/PostLoginSyncRequest$DataStoreClient;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/service/method/PostLoginSyncRequest$DataStoreClient;->INSTANCE:Lcom/facebook/katana/service/method/PostLoginSyncRequest$DataStoreClient;

    .line 57
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/facebook/katana/service/method/PostLoginSyncRequest$DataStoreClient;

    sget-object v1, Lcom/facebook/katana/service/method/PostLoginSyncRequest$DataStoreClient;->INSTANCE:Lcom/facebook/katana/service/method/PostLoginSyncRequest$DataStoreClient;

    aput-object v1, v0, v2

    sput-object v0, Lcom/facebook/katana/service/method/PostLoginSyncRequest$DataStoreClient;->$VALUES:[Lcom/facebook/katana/service/method/PostLoginSyncRequest$DataStoreClient;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/katana/service/method/PostLoginSyncRequest$DataStoreClient;
    .locals 1
    .parameter

    .prologue
    .line 57
    const-class v0, Lcom/facebook/katana/service/method/PostLoginSyncRequest$DataStoreClient;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/method/PostLoginSyncRequest$DataStoreClient;

    return-object v0
.end method

.method public static values()[Lcom/facebook/katana/service/method/PostLoginSyncRequest$DataStoreClient;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/facebook/katana/service/method/PostLoginSyncRequest$DataStoreClient;->$VALUES:[Lcom/facebook/katana/service/method/PostLoginSyncRequest$DataStoreClient;

    invoke-virtual {v0}, [Lcom/facebook/katana/service/method/PostLoginSyncRequest$DataStoreClient;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/katana/service/method/PostLoginSyncRequest$DataStoreClient;

    return-object v0
.end method


# virtual methods
.method public final deserialize(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/katana/service/method/PostLoginSyncRequest$None;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 65
    sget-object v0, Lcom/facebook/katana/service/method/PostLoginSyncRequest$None;->INSTANCE:Lcom/facebook/katana/service/method/PostLoginSyncRequest$None;

    return-object v0
.end method

.method public final bridge synthetic deserialize(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/facebook/katana/service/method/PostLoginSyncRequest$DataStoreClient;->deserialize(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/katana/service/method/PostLoginSyncRequest$None;

    move-result-object v0

    return-object v0
.end method

.method public final getCacheTtl(Lcom/facebook/katana/service/method/PostLoginSyncRequest$None;Lcom/facebook/katana/service/method/PostLoginSyncRequest$None;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 70
    const v0, 0x1e13380

    return v0
.end method

.method public final bridge synthetic getCacheTtl(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 57
    check-cast p1, Lcom/facebook/katana/service/method/PostLoginSyncRequest$None;

    check-cast p2, Lcom/facebook/katana/service/method/PostLoginSyncRequest$None;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/katana/service/method/PostLoginSyncRequest$DataStoreClient;->getCacheTtl(Lcom/facebook/katana/service/method/PostLoginSyncRequest$None;Lcom/facebook/katana/service/method/PostLoginSyncRequest$None;)I

    move-result v0

    return v0
.end method

.method public final getDiskKeyPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    const-class v0, Lcom/facebook/katana/service/method/PostLoginSyncRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDiskKeySuffix(Lcom/facebook/katana/service/method/PostLoginSyncRequest$None;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 82
    const-string v0, "loginSyncStoreKey"

    return-object v0
.end method

.method public final bridge synthetic getDiskKeySuffix(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 57
    check-cast p1, Lcom/facebook/katana/service/method/PostLoginSyncRequest$None;

    invoke-virtual {p0, p1}, Lcom/facebook/katana/service/method/PostLoginSyncRequest$DataStoreClient;->getDiskKeySuffix(Lcom/facebook/katana/service/method/PostLoginSyncRequest$None;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPersistentStoreTtl(Lcom/facebook/katana/service/method/PostLoginSyncRequest$None;Lcom/facebook/katana/service/method/PostLoginSyncRequest$None;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 87
    const v0, 0x1e13380

    return v0
.end method

.method public final bridge synthetic getPersistentStoreTtl(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 57
    check-cast p1, Lcom/facebook/katana/service/method/PostLoginSyncRequest$None;

    check-cast p2, Lcom/facebook/katana/service/method/PostLoginSyncRequest$None;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/katana/service/method/PostLoginSyncRequest$DataStoreClient;->getPersistentStoreTtl(Lcom/facebook/katana/service/method/PostLoginSyncRequest$None;Lcom/facebook/katana/service/method/PostLoginSyncRequest$None;)I

    move-result v0

    return v0
.end method

.method public final initiateNetworkRequest(Landroid/content/Context;Lcom/facebook/katana/service/method/PostLoginSyncRequest$None;Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/katana/service/method/PostLoginSyncRequest$None;",
            "Lcom/facebook/katana/binding/SimpleNetworkRequestCallback",
            "<",
            "Lcom/facebook/katana/service/method/PostLoginSyncRequest$None;",
            "Lcom/facebook/katana/service/method/PostLoginSyncRequest$None;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 93
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    .line 95
    if-nez v0, :cond_0

    .line 103
    :goto_0
    return-object v5

    .line 99
    :cond_0
    new-instance v2, Lcom/facebook/katana/service/method/PostLoginSyncRequest$PostLoginMultiQuery;

    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    invoke-direct {v2, p1, v1}, Lcom/facebook/katana/service/method/PostLoginSyncRequest$PostLoginMultiQuery;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 103
    const/16 v3, 0x3e9

    const/16 v4, 0x3fc

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Lcom/facebook/katana/service/method/ServiceOperation;IILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public final bridge synthetic initiateNetworkRequest(Landroid/content/Context;Ljava/lang/Object;Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    check-cast p2, Lcom/facebook/katana/service/method/PostLoginSyncRequest$None;

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/katana/service/method/PostLoginSyncRequest$DataStoreClient;->initiateNetworkRequest(Landroid/content/Context;Lcom/facebook/katana/service/method/PostLoginSyncRequest$None;Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final staleDataAcceptable(Lcom/facebook/katana/service/method/PostLoginSyncRequest$None;Lcom/facebook/katana/service/method/PostLoginSyncRequest$None;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method public final bridge synthetic staleDataAcceptable(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 57
    check-cast p1, Lcom/facebook/katana/service/method/PostLoginSyncRequest$None;

    check-cast p2, Lcom/facebook/katana/service/method/PostLoginSyncRequest$None;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/katana/service/method/PostLoginSyncRequest$DataStoreClient;->staleDataAcceptable(Lcom/facebook/katana/service/method/PostLoginSyncRequest$None;Lcom/facebook/katana/service/method/PostLoginSyncRequest$None;)Z

    move-result v0

    return v0
.end method
