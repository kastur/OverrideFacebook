.class public Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;
.super Ljava/lang/Object;
.source "ImageAttachmentDataBuilder.java"


# instance fields
.field private a:Landroid/net/Uri;

.field private b:Landroid/net/Uri;

.field private c:I

.field private d:I

.field private e:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;->a:Landroid/net/Uri;

    return-object v0
.end method

.method public final a(I)Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;
    .locals 0
    .parameter

    .prologue
    .line 48
    iput p1, p0, Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;->c:I

    .line 49
    return-object p0
.end method

.method public final a(Landroid/net/Uri;)Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;->a:Landroid/net/Uri;

    .line 31
    return-object p0
.end method

.method public final b()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;->b:Landroid/net/Uri;

    return-object v0
.end method

.method public final b(I)Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;
    .locals 0
    .parameter

    .prologue
    .line 57
    iput p1, p0, Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;->d:I

    .line 58
    return-object p0
.end method

.method public final b(Landroid/net/Uri;)Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;->b:Landroid/net/Uri;

    .line 40
    return-object p0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;->c:I

    return v0
.end method

.method public final c(Landroid/net/Uri;)Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;->e:Landroid/net/Uri;

    .line 67
    return-object p0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;->d:I

    return v0
.end method

.method public final e()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;->e:Landroid/net/Uri;

    return-object v0
.end method

.method public final f()Lcom/facebook/orca/attachments/ImageAttachmentData;
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/facebook/orca/attachments/ImageAttachmentData;

    invoke-direct {v0, p0}, Lcom/facebook/orca/attachments/ImageAttachmentData;-><init>(Lcom/facebook/orca/attachments/ImageAttachmentDataBuilder;)V

    return-object v0
.end method
