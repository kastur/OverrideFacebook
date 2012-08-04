.class public abstract Lcom/facebook/orca/protocol/base/ContentBody;
.super Lcom/facebook/apache/http/entity/mime/content/AbstractContentBody;
.source "ContentBody.java"


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/facebook/apache/http/entity/mime/content/AbstractContentBody;-><init>(Ljava/lang/String;)V

    .line 19
    iput p2, p0, Lcom/facebook/orca/protocol/base/ContentBody;->a:I

    .line 20
    iput-object p3, p0, Lcom/facebook/orca/protocol/base/ContentBody;->b:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/ContentBody;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "binary"

    return-object v0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 48
    iget v0, p0, Lcom/facebook/orca/protocol/base/ContentBody;->a:I

    int-to-long v0, v0

    return-wide v0
.end method
