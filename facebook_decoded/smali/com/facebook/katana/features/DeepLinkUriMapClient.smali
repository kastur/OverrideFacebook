.class Lcom/facebook/katana/features/DeepLinkUriMapClient;
.super Lcom/facebook/katana/features/UriMapClient;
.source "DeepLinkUriMap.java"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const-class v0, Lcom/facebook/katana/features/DeepLinkUriMapClient;

    invoke-static {v0}, Lcom/facebook/katana/util/Utils;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/features/DeepLinkUriMapClient;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/facebook/katana/features/UriMapClient;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Lcom/facebook/katana/IntentUriHandler$UriHandler;
    .locals 1
    .parameter

    .prologue
    .line 147
    new-instance v0, Lcom/facebook/katana/features/DeepLinkUriMap$DeepLinkUriHandler;

    invoke-direct {v0, p1}, Lcom/facebook/katana/features/DeepLinkUriMap$DeepLinkUriHandler;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/facebook/katana/features/DeepLinkUriMapClient;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    const-string v0, "android_deep_links"

    return-object v0
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    const-string v0, "deeplinkurimap"

    return-object v0
.end method

.method protected final d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    sget-object v0, Lcom/facebook/katana/features/DeepLinkUriMap;->a:Ljava/util/Map;

    return-object v0
.end method

.method public bridge synthetic getCacheTtl(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 89
    const/16 v0, 0xe10

    return v0
.end method

.method public getDiskKeyPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    const-class v0, Lcom/facebook/katana/features/DeepLinkUriMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDiskKeySuffix(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 105
    const-string v0, "deeplinkurimap"

    return-object v0
.end method

.method public bridge synthetic getPersistentStoreTtl(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 89
    const/16 v0, 0xe10

    return v0
.end method
