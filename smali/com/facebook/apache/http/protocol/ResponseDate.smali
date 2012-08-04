.class public Lcom/facebook/apache/http/protocol/ResponseDate;
.super Ljava/lang/Object;
.source "ResponseDate.java"

# interfaces
.implements Lcom/facebook/apache/http/HttpResponseInterceptor;


# static fields
.field private static final a:Lcom/facebook/apache/http/protocol/HttpDateGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/facebook/apache/http/protocol/HttpDateGenerator;

    invoke-direct {v0}, Lcom/facebook/apache/http/protocol/HttpDateGenerator;-><init>()V

    sput-object v0, Lcom/facebook/apache/http/protocol/ResponseDate;->a:Lcom/facebook/apache/http/protocol/HttpDateGenerator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/apache/http/HttpResponse;Lcom/facebook/apache/http/protocol/HttpContext;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 54
    if-nez p1, :cond_0

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP response may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    invoke-interface {p1}, Lcom/facebook/apache/http/HttpResponse;->a()Lcom/facebook/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/apache/http/StatusLine;->b()I

    move-result v0

    .line 59
    const/16 v1, 0xc8

    if-lt v0, v1, :cond_1

    const-string v0, "Date"

    invoke-interface {p1, v0}, Lcom/facebook/apache/http/HttpResponse;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    sget-object v0, Lcom/facebook/apache/http/protocol/ResponseDate;->a:Lcom/facebook/apache/http/protocol/HttpDateGenerator;

    invoke-virtual {v0}, Lcom/facebook/apache/http/protocol/HttpDateGenerator;->a()Ljava/lang/String;

    move-result-object v0

    .line 62
    const-string v1, "Date"

    invoke-interface {p1, v1, v0}, Lcom/facebook/apache/http/HttpResponse;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_1
    return-void
.end method
