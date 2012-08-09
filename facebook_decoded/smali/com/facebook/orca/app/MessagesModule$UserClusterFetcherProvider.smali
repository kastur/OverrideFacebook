.class Lcom/facebook/orca/app/MessagesModule$UserClusterFetcherProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/users/UserClusterFetcher;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1025
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1025
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$UserClusterFetcherProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/users/UserClusterFetcher;
    .locals 5

    .prologue
    .line 1029
    new-instance v1, Lcom/facebook/orca/users/UserClusterFetcher;

    const-class v0, Lcom/facebook/orca/users/FacebookUserIterator;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$UserClusterFetcherProvider;->a(Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v2

    const-class v0, Lcom/facebook/orca/users/PhoneUserIterator;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$UserClusterFetcherProvider;->a(Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v3

    const-class v0, Landroid/database/sqlite/SQLiteDatabase;

    const-class v4, Lcom/facebook/orca/annotations/UsersDb;

    invoke-virtual {p0, v0, v4}, Lcom/facebook/orca/app/MessagesModule$UserClusterFetcherProvider;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v1, v2, v3, v0}, Lcom/facebook/orca/users/UserClusterFetcher;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v1
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1025
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$UserClusterFetcherProvider;->b()Lcom/facebook/orca/users/UserClusterFetcher;

    move-result-object v0

    return-object v0
.end method
