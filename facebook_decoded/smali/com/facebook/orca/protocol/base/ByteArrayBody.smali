.class public Lcom/facebook/orca/protocol/base/ByteArrayBody;
.super Lcom/facebook/orca/protocol/base/ContentBody;
.source "ByteArrayBody.java"


# instance fields
.field private a:[B


# direct methods
.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 16
    array-length v0, p1

    invoke-direct {p0, p2, v0, p3}, Lcom/facebook/orca/protocol/base/ContentBody;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 17
    iput-object p1, p0, Lcom/facebook/orca/protocol/base/ByteArrayBody;->a:[B

    .line 18
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/OutputStream;)V
    .locals 2
    .parameter

    .prologue
    .line 22
    if-nez p1, :cond_0

    .line 23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/ByteArrayBody;->a:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 27
    return-void
.end method
