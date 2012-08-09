.class Lcom/facebook/katana/net/HttpOperation$FBMultipartEntity;
.super Lcom/facebook/apache/http/entity/mime/MultipartEntity;
.source "HttpOperation.java"


# instance fields
.field private a:J

.field private synthetic b:Lcom/facebook/katana/net/HttpOperation;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/net/HttpOperation;)V
    .locals 2
    .parameter

    .prologue
    .line 442
    iput-object p1, p0, Lcom/facebook/katana/net/HttpOperation$FBMultipartEntity;->b:Lcom/facebook/katana/net/HttpOperation;

    invoke-direct {p0}, Lcom/facebook/apache/http/entity/mime/MultipartEntity;-><init>()V

    .line 444
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/katana/net/HttpOperation$FBMultipartEntity;->a:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/net/HttpOperation;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 442
    invoke-direct {p0, p1}, Lcom/facebook/katana/net/HttpOperation$FBMultipartEntity;-><init>(Lcom/facebook/katana/net/HttpOperation;)V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 0
    .parameter

    .prologue
    .line 452
    iput-wide p1, p0, Lcom/facebook/katana/net/HttpOperation$FBMultipartEntity;->a:J

    .line 453
    return-void
.end method

.method public final a(Ljava/io/OutputStream;)V
    .locals 4
    .parameter

    .prologue
    .line 448
    new-instance v0, Lcom/facebook/katana/net/HttpOperation$CountingOutputStream;

    iget-object v1, p0, Lcom/facebook/katana/net/HttpOperation$FBMultipartEntity;->b:Lcom/facebook/katana/net/HttpOperation;

    iget-wide v2, p0, Lcom/facebook/katana/net/HttpOperation$FBMultipartEntity;->a:J

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/facebook/katana/net/HttpOperation$CountingOutputStream;-><init>(Lcom/facebook/katana/net/HttpOperation;Ljava/io/OutputStream;J)V

    invoke-super {p0, v0}, Lcom/facebook/apache/http/entity/mime/MultipartEntity;->a(Ljava/io/OutputStream;)V

    .line 449
    return-void
.end method
