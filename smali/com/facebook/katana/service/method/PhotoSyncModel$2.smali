.class final Lcom/facebook/katana/service/method/PhotoSyncModel$2;
.super Ljava/lang/Object;
.source "PhotoSyncModel.java"

# interfaces
.implements Lcom/facebook/katana/util/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/katana/util/Factory",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Ljava/util/Collection;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/Collection;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/facebook/katana/service/method/PhotoSyncModel$2;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/katana/service/method/PhotoSyncModel$2;->b:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b()Landroid/database/Cursor;
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/facebook/katana/service/method/PhotoSyncModel$2;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/katana/service/method/PhotoSyncModel$2;->b:Ljava/util/Collection;

    invoke-static {v0, v1}, Lcom/facebook/katana/service/method/PhotoSyncModel;->a(Landroid/content/Context;Ljava/util/Collection;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/facebook/katana/service/method/PhotoSyncModel$2;->b()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
