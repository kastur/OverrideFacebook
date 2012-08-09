.class Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity$1;
.super Ljava/lang/Object;
.source "CodeGeneratorAutoProvisionSecretActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity$1;->a:Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 63
    :goto_0
    return-void

    .line 57
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity$1;->a:Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity;

    const v1, 0x7f080088

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 59
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 60
    iget-object v0, p0, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity$1;->a:Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity;->showDialog(I)V

    .line 61
    iget-object v0, p0, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity$1;->a:Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity$1;->a:Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity;

    invoke-static {v1}, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity;->a(Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/service/method/CodeGeneratorGetSecret;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x7f080088
        :pswitch_0
    .end packed-switch
.end method
