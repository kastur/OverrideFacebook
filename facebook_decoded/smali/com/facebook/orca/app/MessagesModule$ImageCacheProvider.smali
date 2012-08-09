.class Lcom/facebook/orca/app/MessagesModule$ImageCacheProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/images/ImageCache;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/facebook/orca/app/MessagesModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1308
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesModule$ImageCacheProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1308
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$ImageCacheProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/images/ImageCache;
    .locals 4

    .prologue
    .line 1312
    new-instance v1, Lcom/facebook/orca/images/ImageCache;

    iget-object v0, p0, Lcom/facebook/orca/app/MessagesModule$ImageCacheProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-static {v0}, Lcom/facebook/orca/app/MessagesModule;->a(Lcom/facebook/orca/app/MessagesModule;)Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/orca/app/MessagesModule$ImageCacheProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-static {v0}, Lcom/facebook/orca/app/MessagesModule;->a(Lcom/facebook/orca/app/MessagesModule;)Landroid/content/Context;

    move-result-object v0

    const-string v3, "activity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-direct {v1, v2, v0}, Lcom/facebook/orca/images/ImageCache;-><init>(Landroid/content/Context;Landroid/app/ActivityManager;)V

    return-object v1
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1308
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$ImageCacheProvider;->b()Lcom/facebook/orca/images/ImageCache;

    move-result-object v0

    return-object v0
.end method
