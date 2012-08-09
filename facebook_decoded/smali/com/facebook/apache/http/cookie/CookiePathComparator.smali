.class public Lcom/facebook/apache/http/cookie/CookiePathComparator;
.super Ljava/lang/Object;
.source "CookiePathComparator.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation build Lcom/facebook/apache/http/annotation/Immutable;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/facebook/apache/http/cookie/Cookie;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/facebook/apache/http/cookie/Cookie;Lcom/facebook/apache/http/cookie/Cookie;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-static {p1}, Lcom/facebook/apache/http/cookie/CookiePathComparator;->a(Lcom/facebook/apache/http/cookie/Cookie;)Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-static {p2}, Lcom/facebook/apache/http/cookie/CookiePathComparator;->a(Lcom/facebook/apache/http/cookie/Cookie;)Ljava/lang/String;

    move-result-object v2

    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 77
    :cond_0
    :goto_0
    return v0

    .line 71
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 72
    const/4 v0, -0x1

    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static a(Lcom/facebook/apache/http/cookie/Cookie;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 56
    invoke-interface {p0}, Lcom/facebook/apache/http/cookie/Cookie;->e()Ljava/lang/String;

    move-result-object v0

    .line 57
    if-nez v0, :cond_0

    .line 58
    const-string v0, "/"

    .line 60
    :cond_0
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    :cond_1
    return-object v0
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 50
    check-cast p1, Lcom/facebook/apache/http/cookie/Cookie;

    check-cast p2, Lcom/facebook/apache/http/cookie/Cookie;

    invoke-direct {p0, p1, p2}, Lcom/facebook/apache/http/cookie/CookiePathComparator;->a(Lcom/facebook/apache/http/cookie/Cookie;Lcom/facebook/apache/http/cookie/Cookie;)I

    move-result v0

    return v0
.end method
