.class public Lcom/facebook/katana/dialog/Dialogs;
.super Ljava/lang/Object;
.source "Dialogs.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static a(Landroid/content/Context;JLcom/facebook/katana/dialog/Dialogs$AddFriendListener;)Landroid/app/Dialog;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 37
    const v1, 0x7f030064

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 38
    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 39
    const v1, 0x7f0b02cb

    invoke-virtual {v7, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 41
    const v1, 0x7f08015c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 43
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v2

    .line 46
    new-instance v0, Lcom/facebook/katana/dialog/Dialogs$1;

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/dialog/Dialogs$1;-><init>(Landroid/widget/TextView;Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;JLcom/facebook/katana/dialog/Dialogs$AddFriendListener;)V

    .line 61
    new-instance v2, Lcom/facebook/katana/dialog/Dialogs$2;

    invoke-direct {v2, v0}, Lcom/facebook/katana/dialog/Dialogs$2;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 72
    const v1, 0x7f0b02f9

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/facebook/katana/dialog/Dialogs$3;

    invoke-direct {v2, v0}, Lcom/facebook/katana/dialog/Dialogs$3;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 79
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
