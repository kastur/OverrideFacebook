.class Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity$2;
.super Ljava/lang/Object;
.source "CodeGeneratorAutoProvisionSecretActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 119
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 120
    return-void
.end method
