.class public Lcom/facebook/katana/features/DeepLinkUriMap;
.super Ljava/lang/Object;
.source "DeepLinkUriMap.java"


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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/facebook/katana/features/DeepLinkUriMap$1;

    invoke-direct {v0}, Lcom/facebook/katana/features/DeepLinkUriMap$1;-><init>()V

    sput-object v0, Lcom/facebook/katana/features/DeepLinkUriMap;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method
