.class Lcom/facebook/katana/net/HttpOperation$MyInputStreamEntity;
.super Lcom/facebook/apache/http/entity/InputStreamEntity;
.source "HttpOperation.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/net/HttpOperation;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/net/HttpOperation;Ljava/io/InputStream;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 466
    iput-object p1, p0, Lcom/facebook/katana/net/HttpOperation$MyInputStreamEntity;->a:Lcom/facebook/katana/net/HttpOperation;

    .line 467
    invoke-direct {p0, p2, p3, p4}, Lcom/facebook/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 468
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/OutputStream;)V
    .locals 4
    .parameter

    .prologue
    .line 475
    new-instance v0, Lcom/facebook/katana/net/HttpOperation$CountingOutputStream;

    iget-object v1, p0, Lcom/facebook/katana/net/HttpOperation$MyInputStreamEntity;->a:Lcom/facebook/katana/net/HttpOperation;

    invoke-virtual {p0}, Lcom/facebook/katana/net/HttpOperation$MyInputStreamEntity;->c()J

    move-result-wide v2

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/facebook/katana/net/HttpOperation$CountingOutputStream;-><init>(Lcom/facebook/katana/net/HttpOperation;Ljava/io/OutputStream;J)V

    invoke-super {p0, v0}, Lcom/facebook/apache/http/entity/InputStreamEntity;->a(Ljava/io/OutputStream;)V

    .line 476
    return-void
.end method
