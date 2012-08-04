.class public Lcom/facebook/apache/http/impl/cookie/BasicExpiresHandler;
.super Lcom/facebook/apache/http/impl/cookie/AbstractCookieAttributeHandler;
.source "BasicExpiresHandler.java"


# annotations
.annotation build Lcom/facebook/apache/http/annotation/Immutable;
.end annotation


# instance fields
.field private final a:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/cookie/AbstractCookieAttributeHandler;-><init>()V

    .line 46
    if-nez p1, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array of date patterns may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    iput-object p1, p0, Lcom/facebook/apache/http/impl/cookie/BasicExpiresHandler;->a:[Ljava/lang/String;

    .line 50
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/apache/http/cookie/SetCookie;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 54
    if-nez p1, :cond_0

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    if-nez p2, :cond_1

    .line 58
    new-instance v0, Lcom/facebook/apache/http/cookie/MalformedCookieException;

    const-string v1, "Missing value for expires attribute"

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/cookie/BasicExpiresHandler;->a:[Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/facebook/apache/http/impl/cookie/DateUtils;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/apache/http/cookie/SetCookie;->b(Ljava/util/Date;)V
    :try_end_0
    .catch Lcom/facebook/apache/http/impl/cookie/DateParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    return-void

    .line 63
    :catch_0
    move-exception v0

    new-instance v0, Lcom/facebook/apache/http/cookie/MalformedCookieException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to parse expires attribute: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
