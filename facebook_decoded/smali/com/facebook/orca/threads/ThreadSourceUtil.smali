.class public Lcom/facebook/orca/threads/ThreadSourceUtil;
.super Ljava/lang/Object;
.source "ThreadSourceUtil.java"


# instance fields
.field private final a:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/facebook/orca/threads/ThreadSourceUtil;->a:Landroid/content/res/Resources;

    .line 17
    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 37
    const-string v0, "mobile"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "messenger"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    :cond_0
    sget v0, Lcom/facebook/orca/R$drawable;->orca_receipt_phone_icon:I

    .line 46
    :goto_0
    return v0

    .line 41
    :cond_1
    const-string v0, "chat"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "web"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 42
    :cond_2
    sget v0, Lcom/facebook/orca/R$drawable;->orca_receipt_bubble_icon:I

    goto :goto_0

    .line 43
    :cond_3
    const-string v0, "email"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 44
    sget v0, Lcom/facebook/orca/R$drawable;->orca_receipt_email_icon:I

    goto :goto_0

    .line 46
    :cond_4
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 24
    const-string v0, "mobile"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "messenger"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    :cond_0
    sget v0, Lcom/facebook/orca/R$drawable;->orca_message_type_phone:I

    .line 33
    :goto_0
    return v0

    .line 28
    :cond_1
    const-string v0, "chat"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "web"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 29
    :cond_2
    sget v0, Lcom/facebook/orca/R$drawable;->orca_message_type_chat:I

    goto :goto_0

    .line 30
    :cond_3
    const-string v0, "email"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 31
    sget v0, Lcom/facebook/orca/R$drawable;->orca_message_type_email:I

    goto :goto_0

    .line 33
    :cond_4
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/threads/Message;)I
    .locals 1
    .parameter

    .prologue
    .line 20
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->u()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/threads/ThreadSourceUtil;->c(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final b(Lcom/facebook/orca/threads/Message;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 50
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threads/ThreadSourceUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 54
    const-string v0, "mobile"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSourceUtil;->a:Landroid/content/res/Resources;

    sget v1, Lcom/facebook/orca/R$string;->source_from_mobile:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 65
    :goto_0
    return-object v0

    .line 56
    :cond_0
    const-string v0, "messenger"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSourceUtil;->a:Landroid/content/res/Resources;

    sget v1, Lcom/facebook/orca/R$string;->source_from_messenger:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 58
    :cond_1
    const-string v0, "chat"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSourceUtil;->a:Landroid/content/res/Resources;

    sget v1, Lcom/facebook/orca/R$string;->source_from_web:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 60
    :cond_2
    const-string v0, "email"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 61
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSourceUtil;->a:Landroid/content/res/Resources;

    sget v1, Lcom/facebook/orca/R$string;->source_from_email:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 62
    :cond_3
    const-string v0, "sms"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 63
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSourceUtil;->a:Landroid/content/res/Resources;

    sget v1, Lcom/facebook/orca/R$string;->source_from_sms:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 65
    :cond_4
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSourceUtil;->a:Landroid/content/res/Resources;

    sget v1, Lcom/facebook/orca/R$string;->source_from_web:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
