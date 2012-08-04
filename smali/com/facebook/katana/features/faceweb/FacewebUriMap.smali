.class public Lcom/facebook/katana/features/faceweb/FacewebUriMap;
.super Ljava/lang/Object;
.source "FacewebUriMap.java"


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/facebook/katana/binding/SimpleManagedDataStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/katana/binding/SimpleManagedDataStore",
            "<",
            "Ljava/lang/Object;",
            "Lcom/facebook/katana/util/UriTemplateMap",
            "<",
            "Lcom/facebook/katana/IntentUriHandler$UriHandler;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/facebook/katana/features/faceweb/FacewebUriMap$1;

    invoke-direct {v0}, Lcom/facebook/katana/features/faceweb/FacewebUriMap$1;-><init>()V

    sput-object v0, Lcom/facebook/katana/features/faceweb/FacewebUriMap;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method private static a()Lcom/facebook/katana/binding/SimpleManagedDataStore;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/katana/binding/SimpleManagedDataStore",
            "<",
            "Ljava/lang/Object;",
            "Lcom/facebook/katana/util/UriTemplateMap",
            "<",
            "Lcom/facebook/katana/IntentUriHandler$UriHandler;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 83
    sget-object v0, Lcom/facebook/katana/features/faceweb/FacewebUriMap;->b:Lcom/facebook/katana/binding/SimpleManagedDataStore;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lcom/facebook/katana/features/faceweb/FacewebUriMapClient;

    invoke-direct {v0}, Lcom/facebook/katana/features/faceweb/FacewebUriMapClient;-><init>()V

    .line 85
    new-instance v1, Lcom/facebook/katana/binding/SimpleManagedDataStore;

    sget-object v2, Lcom/facebook/katana/binding/ManagedDataStore$Mode;->SINGLE_REQUEST:Lcom/facebook/katana/binding/ManagedDataStore$Mode;

    invoke-direct {v1, v0, v2}, Lcom/facebook/katana/binding/SimpleManagedDataStore;-><init>(Lcom/facebook/katana/binding/SimpleManagedDataStore$Client;Lcom/facebook/katana/binding/ManagedDataStore$Mode;)V

    sput-object v1, Lcom/facebook/katana/features/faceweb/FacewebUriMap;->b:Lcom/facebook/katana/binding/SimpleManagedDataStore;

    .line 88
    :cond_0
    sget-object v0, Lcom/facebook/katana/features/faceweb/FacewebUriMap;->b:Lcom/facebook/katana/binding/SimpleManagedDataStore;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/facebook/katana/util/UriTemplateMap;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/facebook/katana/util/UriTemplateMap",
            "<",
            "Lcom/facebook/katana/IntentUriHandler$UriHandler;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    invoke-static {}, Lcom/facebook/katana/features/faceweb/FacewebUriMap;->a()Lcom/facebook/katana/binding/SimpleManagedDataStore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/facebook/katana/binding/SimpleManagedDataStore;->a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/util/UriTemplateMap;

    return-object v0
.end method
