.class public Lcom/facebook/orca/threads/AttachmentInfoBuilder;
.super Ljava/lang/Object;
.source "AttachmentInfoBuilder.java"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Lcom/facebook/orca/threads/AttachmentInfo$ImageData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/facebook/orca/threads/AttachmentInfoBuilder;
    .locals 0
    .parameter

    .prologue
    .line 34
    iput p1, p0, Lcom/facebook/orca/threads/AttachmentInfoBuilder;->b:I

    .line 35
    return-object p0
.end method

.method public final a(Lcom/facebook/orca/threads/AttachmentInfo$ImageData;)Lcom/facebook/orca/threads/AttachmentInfoBuilder;
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/facebook/orca/threads/AttachmentInfoBuilder;->f:Lcom/facebook/orca/threads/AttachmentInfo$ImageData;

    .line 71
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/facebook/orca/threads/AttachmentInfoBuilder;
    .locals 0
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/facebook/orca/threads/AttachmentInfoBuilder;->a:Ljava/lang/String;

    .line 26
    return-object p0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/facebook/orca/threads/AttachmentInfoBuilder;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/facebook/orca/threads/AttachmentInfoBuilder;->b:I

    return v0
.end method

.method public final b(I)Lcom/facebook/orca/threads/AttachmentInfoBuilder;
    .locals 0
    .parameter

    .prologue
    .line 61
    iput p1, p0, Lcom/facebook/orca/threads/AttachmentInfoBuilder;->e:I

    .line 62
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/facebook/orca/threads/AttachmentInfoBuilder;
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/facebook/orca/threads/AttachmentInfoBuilder;->c:Ljava/lang/String;

    .line 44
    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/facebook/orca/threads/AttachmentInfoBuilder;
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/facebook/orca/threads/AttachmentInfoBuilder;->d:Ljava/lang/String;

    .line 53
    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/facebook/orca/threads/AttachmentInfoBuilder;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/facebook/orca/threads/AttachmentInfoBuilder;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/facebook/orca/threads/AttachmentInfoBuilder;->e:I

    return v0
.end method

.method public final f()Lcom/facebook/orca/threads/AttachmentInfo$ImageData;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/facebook/orca/threads/AttachmentInfoBuilder;->f:Lcom/facebook/orca/threads/AttachmentInfo$ImageData;

    return-object v0
.end method

.method public final g()Lcom/facebook/orca/threads/AttachmentInfo;
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/facebook/orca/threads/AttachmentInfo;

    invoke-direct {v0, p0}, Lcom/facebook/orca/threads/AttachmentInfo;-><init>(Lcom/facebook/orca/threads/AttachmentInfoBuilder;)V

    return-object v0
.end method
