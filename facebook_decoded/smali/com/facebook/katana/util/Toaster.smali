.class public Lcom/facebook/katana/util/Toaster;
.super Ljava/lang/Object;
.source "Toaster.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;II)V

    .line 16
    return-void
.end method

.method public static a(Landroid/content/Context;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-static {p0, v0, p2}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 28
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 38
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 48
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/16 v3, 0x3c

    if-le v2, v3, :cond_1

    move v2, v0

    .line 49
    :goto_0
    if-eqz v2, :cond_2

    .line 50
    :goto_1
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 51
    if-eqz p2, :cond_0

    .line 52
    invoke-virtual {v0, p2, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 54
    :cond_0
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 55
    return-void

    :cond_1
    move v2, v1

    .line 48
    goto :goto_0

    :cond_2
    move v0, v1

    .line 49
    goto :goto_1
.end method
