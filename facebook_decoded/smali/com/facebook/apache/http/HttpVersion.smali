.class public final Lcom/facebook/apache/http/HttpVersion;
.super Lcom/facebook/apache/http/ProtocolVersion;
.source "HttpVersion.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Lcom/facebook/apache/http/HttpVersion;

.field public static final b:Lcom/facebook/apache/http/HttpVersion;

.field private static e:Lcom/facebook/apache/http/HttpVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 54
    new-instance v0, Lcom/facebook/apache/http/HttpVersion;

    const/16 v1, 0x9

    invoke-direct {v0, v3, v1}, Lcom/facebook/apache/http/HttpVersion;-><init>(II)V

    sput-object v0, Lcom/facebook/apache/http/HttpVersion;->e:Lcom/facebook/apache/http/HttpVersion;

    .line 57
    new-instance v0, Lcom/facebook/apache/http/HttpVersion;

    invoke-direct {v0, v2, v3}, Lcom/facebook/apache/http/HttpVersion;-><init>(II)V

    sput-object v0, Lcom/facebook/apache/http/HttpVersion;->a:Lcom/facebook/apache/http/HttpVersion;

    .line 60
    new-instance v0, Lcom/facebook/apache/http/HttpVersion;

    invoke-direct {v0, v2, v2}, Lcom/facebook/apache/http/HttpVersion;-><init>(II)V

    sput-object v0, Lcom/facebook/apache/http/HttpVersion;->b:Lcom/facebook/apache/http/HttpVersion;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 72
    const-string v0, "HTTP"

    invoke-direct {p0, v0, p1, p2}, Lcom/facebook/apache/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    .line 73
    return-void
.end method


# virtual methods
.method public final a(II)Lcom/facebook/apache/http/ProtocolVersion;
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 86
    iget v0, p0, Lcom/facebook/apache/http/HttpVersion;->c:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/facebook/apache/http/HttpVersion;->d:I

    if-ne p2, v0, :cond_0

    .line 103
    :goto_0
    return-object p0

    .line 90
    :cond_0
    if-ne p1, v1, :cond_2

    .line 91
    if-nez p2, :cond_1

    .line 92
    sget-object p0, Lcom/facebook/apache/http/HttpVersion;->a:Lcom/facebook/apache/http/HttpVersion;

    goto :goto_0

    .line 94
    :cond_1
    if-ne p2, v1, :cond_2

    .line 95
    sget-object p0, Lcom/facebook/apache/http/HttpVersion;->b:Lcom/facebook/apache/http/HttpVersion;

    goto :goto_0

    .line 98
    :cond_2
    if-nez p1, :cond_3

    const/16 v0, 0x9

    if-ne p2, v0, :cond_3

    .line 99
    sget-object p0, Lcom/facebook/apache/http/HttpVersion;->e:Lcom/facebook/apache/http/HttpVersion;

    goto :goto_0

    .line 103
    :cond_3
    new-instance p0, Lcom/facebook/apache/http/HttpVersion;

    invoke-direct {p0, p1, p2}, Lcom/facebook/apache/http/HttpVersion;-><init>(II)V

    goto :goto_0
.end method
