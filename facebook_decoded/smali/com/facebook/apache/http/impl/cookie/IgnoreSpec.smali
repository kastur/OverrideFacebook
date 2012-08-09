.class public Lcom/facebook/apache/http/impl/cookie/IgnoreSpec;
.super Lcom/facebook/apache/http/impl/cookie/CookieSpecBase;
.source "IgnoreSpec.java"


# annotations
.annotation build Lcom/facebook/apache/http/annotation/NotThreadSafe;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/cookie/CookieSpecBase;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lcom/facebook/apache/http/Header;Lcom/facebook/apache/http/cookie/CookieOrigin;)Ljava/util/List;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/apache/http/Header;",
            "Lcom/facebook/apache/http/cookie/CookieOrigin;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/apache/http/cookie/Cookie;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/apache/http/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/facebook/apache/http/Header;
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method
