.class public Lcom/facebook/apache/http/cookie/CookieIdentityComparator;
.super Ljava/lang/Object;
.source "CookieIdentityComparator.java"

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
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/facebook/apache/http/cookie/Cookie;Lcom/facebook/apache/http/cookie/Cookie;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x2e

    const/4 v3, -0x1

    .line 49
    invoke-interface {p0}, Lcom/facebook/apache/http/cookie/Cookie;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/facebook/apache/http/cookie/Cookie;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 50
    if-nez v0, :cond_2

    .line 52
    invoke-interface {p0}, Lcom/facebook/apache/http/cookie/Cookie;->d()Ljava/lang/String;

    move-result-object v0

    .line 53
    if-nez v0, :cond_6

    .line 54
    const-string v0, ""

    .line 58
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/facebook/apache/http/cookie/Cookie;->d()Ljava/lang/String;

    move-result-object v1

    .line 59
    if-nez v1, :cond_7

    .line 60
    const-string v1, ""

    .line 64
    :cond_1
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 66
    :cond_2
    if-nez v0, :cond_5

    .line 67
    invoke-interface {p0}, Lcom/facebook/apache/http/cookie/Cookie;->e()Ljava/lang/String;

    move-result-object v0

    .line 68
    if-nez v0, :cond_3

    .line 69
    const-string v0, "/"

    .line 71
    :cond_3
    invoke-interface {p1}, Lcom/facebook/apache/http/cookie/Cookie;->e()Ljava/lang/String;

    move-result-object v1

    .line 72
    if-nez v1, :cond_4

    .line 73
    const-string v1, "/"

    .line 75
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 77
    :cond_5
    return v0

    .line 55
    :cond_6
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".local"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 61
    :cond_7
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".local"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 43
    check-cast p1, Lcom/facebook/apache/http/cookie/Cookie;

    check-cast p2, Lcom/facebook/apache/http/cookie/Cookie;

    invoke-static {p1, p2}, Lcom/facebook/apache/http/cookie/CookieIdentityComparator;->a(Lcom/facebook/apache/http/cookie/Cookie;Lcom/facebook/apache/http/cookie/Cookie;)I

    move-result v0

    return v0
.end method
