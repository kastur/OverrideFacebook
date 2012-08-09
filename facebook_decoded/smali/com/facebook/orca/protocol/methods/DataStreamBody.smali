.class public Lcom/facebook/orca/protocol/methods/DataStreamBody;
.super Lcom/facebook/orca/protocol/base/ContentBody;
.source "DataStreamBody.java"


# instance fields
.field private a:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-direct {p0, p2, v0, p3}, Lcom/facebook/orca/protocol/base/ContentBody;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/facebook/orca/protocol/methods/DataStreamBody;->a:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return-void

    .line 23
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid file; are you sure this file exists?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Ljava/io/OutputStream;)V
    .locals 2
    .parameter

    .prologue
    .line 29
    if-nez p1, :cond_0

    .line 30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/DataStreamBody;->a:Ljava/io/InputStream;

    invoke-static {v0, p1}, Lcom/google/common/io/ByteStreams;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 34
    return-void
.end method
