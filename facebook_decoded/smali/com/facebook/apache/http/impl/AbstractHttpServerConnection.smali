.class public abstract Lcom/facebook/apache/http/impl/AbstractHttpServerConnection;
.super Ljava/lang/Object;
.source "AbstractHttpServerConnection.java"

# interfaces
.implements Lcom/facebook/apache/http/HttpServerConnection;


# instance fields
.field private a:Lcom/facebook/apache/http/io/SessionInputBuffer;

.field private b:Lcom/facebook/apache/http/io/SessionOutputBuffer;

.field private c:Lcom/facebook/apache/http/io/EofSensor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object v0, p0, Lcom/facebook/apache/http/impl/AbstractHttpServerConnection;->a:Lcom/facebook/apache/http/io/SessionInputBuffer;

    .line 78
    iput-object v0, p0, Lcom/facebook/apache/http/impl/AbstractHttpServerConnection;->b:Lcom/facebook/apache/http/io/SessionOutputBuffer;

    .line 79
    iput-object v0, p0, Lcom/facebook/apache/http/impl/AbstractHttpServerConnection;->c:Lcom/facebook/apache/http/io/EofSensor;

    .line 80
    invoke-static {}, Lcom/facebook/apache/http/impl/AbstractHttpServerConnection;->b()Lcom/facebook/apache/http/impl/entity/EntitySerializer;

    .line 95
    invoke-static {}, Lcom/facebook/apache/http/impl/AbstractHttpServerConnection;->a()Lcom/facebook/apache/http/impl/entity/EntityDeserializer;

    .line 96
    return-void
.end method

.method private static a()Lcom/facebook/apache/http/impl/entity/EntityDeserializer;
    .locals 2

    .prologue
    .line 117
    new-instance v0, Lcom/facebook/apache/http/impl/entity/EntityDeserializer;

    new-instance v1, Lcom/facebook/apache/http/impl/entity/LaxContentLengthStrategy;

    invoke-direct {v1}, Lcom/facebook/apache/http/impl/entity/LaxContentLengthStrategy;-><init>()V

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/impl/entity/EntityDeserializer;-><init>(Lcom/facebook/apache/http/entity/ContentLengthStrategy;)V

    return-object v0
.end method

.method private static b()Lcom/facebook/apache/http/impl/entity/EntitySerializer;
    .locals 2

    .prologue
    .line 132
    new-instance v0, Lcom/facebook/apache/http/impl/entity/EntitySerializer;

    new-instance v1, Lcom/facebook/apache/http/impl/entity/StrictContentLengthStrategy;

    invoke-direct {v1}, Lcom/facebook/apache/http/impl/entity/StrictContentLengthStrategy;-><init>()V

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/impl/entity/EntitySerializer;-><init>(Lcom/facebook/apache/http/entity/ContentLengthStrategy;)V

    return-object v0
.end method

.method private g()Z
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final e()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 295
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/AbstractHttpServerConnection;->d()Z

    move-result v1

    if-nez v1, :cond_1

    .line 305
    :cond_0
    :goto_0
    return v0

    .line 298
    :cond_1
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/AbstractHttpServerConnection;->g()Z

    move-result v1

    if-nez v1, :cond_0

    .line 302
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-interface {v1, v2}, Lcom/facebook/apache/http/io/SessionInputBuffer;->a(I)Z

    .line 303
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/AbstractHttpServerConnection;->g()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 305
    :catch_0
    move-exception v1

    goto :goto_0
.end method
