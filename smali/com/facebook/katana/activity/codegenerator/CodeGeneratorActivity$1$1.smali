.class Lcom/facebook/katana/activity/codegenerator/CodeGeneratorActivity$1$1;
.super Ljava/lang/Object;
.source "CodeGeneratorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/codegenerator/CodeGeneratorActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 83
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 84
    return-void
.end method
