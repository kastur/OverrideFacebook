.class public Lcom/facebook/katana/service/vault/methods/VaultImageUploadParams;
.super Ljava/lang/Object;
.source "VaultImageUploadParams.java"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:J


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/facebook/katana/service/vault/methods/VaultImageUploadParams;->a:Ljava/io/File;

    .line 22
    iput-object p2, p0, Lcom/facebook/katana/service/vault/methods/VaultImageUploadParams;->b:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/facebook/katana/service/vault/methods/VaultImageUploadParams;->c:Ljava/lang/String;

    .line 24
    iput-wide p4, p0, Lcom/facebook/katana/service/vault/methods/VaultImageUploadParams;->d:J

    .line 25
    return-void
.end method


# virtual methods
.method public final a()Ljava/io/File;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/facebook/katana/service/vault/methods/VaultImageUploadParams;->a:Ljava/io/File;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/facebook/katana/service/vault/methods/VaultImageUploadParams;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/facebook/katana/service/vault/methods/VaultImageUploadParams;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/facebook/katana/service/vault/methods/VaultImageUploadParams;->d:J

    return-wide v0
.end method

.method public final e()Ljava/lang/String;
    .locals 4

    .prologue
    .line 49
    iget-object v0, p0, Lcom/facebook/katana/service/vault/methods/VaultImageUploadParams;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/katana/provider/VaultImageProvider;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 50
    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
