.class public Lcom/facebook/katana/service/method/PostLoginSyncRequest;
.super Ljava/lang/Object;
.source "PostLoginSyncRequest.java"


# static fields
.field private static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lcom/facebook/katana/binding/SimpleManagedDataStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/katana/binding/SimpleManagedDataStore",
            "<",
            "Lcom/facebook/katana/service/method/PostLoginSyncRequest$None;",
            "Lcom/facebook/katana/service/method/PostLoginSyncRequest$None;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    new-instance v0, Lcom/facebook/katana/service/method/PostLoginSyncRequest$1;

    invoke-direct {v0}, Lcom/facebook/katana/service/method/PostLoginSyncRequest$1;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/service/method/PostLoginSyncRequest;->a:Ljava/util/Set;

    .line 48
    new-instance v0, Lcom/facebook/katana/binding/SimpleManagedDataStore;

    sget-object v1, Lcom/facebook/katana/service/method/PostLoginSyncRequest$DataStoreClient;->INSTANCE:Lcom/facebook/katana/service/method/PostLoginSyncRequest$DataStoreClient;

    sget-object v2, Lcom/facebook/katana/binding/ManagedDataStore$Mode;->SINGLE_REQUEST_BY_KEY:Lcom/facebook/katana/binding/ManagedDataStore$Mode;

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/binding/SimpleManagedDataStore;-><init>(Lcom/facebook/katana/binding/SimpleManagedDataStore$Client;Lcom/facebook/katana/binding/ManagedDataStore$Mode;)V

    sput-object v0, Lcom/facebook/katana/service/method/PostLoginSyncRequest;->b:Lcom/facebook/katana/binding/SimpleManagedDataStore;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    return-void
.end method

.method static synthetic a()Ljava/util/Set;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/facebook/katana/service/method/PostLoginSyncRequest;->a:Ljava/util/Set;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    .line 120
    sget-object v0, Lcom/facebook/katana/service/method/PostLoginSyncRequest;->b:Lcom/facebook/katana/binding/SimpleManagedDataStore;

    sget-object v1, Lcom/facebook/katana/service/method/PostLoginSyncRequest$None;->INSTANCE:Lcom/facebook/katana/service/method/PostLoginSyncRequest$None;

    invoke-virtual {v0, p0, v1}, Lcom/facebook/katana/binding/SimpleManagedDataStore;->a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/facebook/katana/service/method/PostLoginSyncRequest;->b:Lcom/facebook/katana/binding/SimpleManagedDataStore;

    const/4 v2, 0x1

    sget-object v3, Lcom/facebook/katana/service/method/PostLoginSyncRequest$None;->INSTANCE:Lcom/facebook/katana/service/method/PostLoginSyncRequest$None;

    sget-object v1, Lcom/facebook/katana/service/method/PostLoginSyncRequest$None;->INSTANCE:Lcom/facebook/katana/service/method/PostLoginSyncRequest$None;

    invoke-virtual {v1}, Lcom/facebook/katana/service/method/PostLoginSyncRequest$None;->name()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/facebook/katana/service/method/PostLoginSyncRequest$None;->INSTANCE:Lcom/facebook/katana/service/method/PostLoginSyncRequest$None;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/katana/binding/SimpleManagedDataStore;->a(Landroid/content/Context;ZLjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    return-void
.end method
