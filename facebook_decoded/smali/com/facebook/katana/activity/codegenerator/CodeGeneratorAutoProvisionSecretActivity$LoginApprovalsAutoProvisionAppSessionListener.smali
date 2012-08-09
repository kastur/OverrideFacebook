.class Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity$LoginApprovalsAutoProvisionAppSessionListener;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "CodeGeneratorAutoProvisionSecretActivity.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity$LoginApprovalsAutoProvisionAppSessionListener;->a:Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity;

    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity$LoginApprovalsAutoProvisionAppSessionListener;-><init>(Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity;)V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Exception;Lcom/facebook/katana/model/CodeGeneratorGetSecretResponse;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 154
    iget-object v0, p0, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity$LoginApprovalsAutoProvisionAppSessionListener;->a:Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity;

    const v1, 0x7f080088

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 156
    iget-object v1, p0, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity$LoginApprovalsAutoProvisionAppSessionListener;->a:Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity;

    invoke-virtual {v1, v6}, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity;->removeDialog(I)V

    .line 158
    const/16 v1, 0xc8

    if-ne p1, v1, :cond_0

    .line 160
    invoke-virtual {p3}, Lcom/facebook/katana/model/CodeGeneratorGetSecretResponse;->b()Ljava/lang/String;

    move-result-object v1

    .line 161
    iget-object v2, p0, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity$LoginApprovalsAutoProvisionAppSessionListener;->a:Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v2

    .line 163
    invoke-virtual {v2}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v2

    iget-wide v2, v2, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    .line 164
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "login_approvals_secret:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 166
    iget-object v3, p0, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity$LoginApprovalsAutoProvisionAppSessionListener;->a:Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity;

    invoke-static {v3, v2, v1}, Lcom/facebook/katana/provider/KeyValueManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 170
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity$LoginApprovalsAutoProvisionAppSessionListener;->a:Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity;

    const-class v3, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 173
    iget-object v2, p0, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity$LoginApprovalsAutoProvisionAppSessionListener;->a:Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity;

    invoke-virtual {v2, v1}, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity;->startActivity(Landroid/content/Intent;)V

    .line 174
    iget-object v1, p0, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity$LoginApprovalsAutoProvisionAppSessionListener;->a:Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity;

    invoke-virtual {v1}, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity;->finish()V

    .line 190
    :goto_0
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setClickable(Z)V

    .line 191
    return-void

    .line 176
    :cond_0
    instance-of v1, p2, Ljava/net/UnknownHostException;

    if-nez v1, :cond_1

    instance-of v1, p2, Ljavax/net/ssl/SSLException;

    if-nez v1, :cond_1

    instance-of v1, p2, Lcom/facebook/apache/http/conn/ConnectTimeoutException;

    if-eqz v1, :cond_2

    .line 179
    :cond_1
    iget-object v1, p0, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity$LoginApprovalsAutoProvisionAppSessionListener;->a:Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity;

    iget-object v2, p0, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity$LoginApprovalsAutoProvisionAppSessionListener;->a:Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity;

    const v3, 0x7f0b0481

    invoke-virtual {v2, v3}, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity;->a(Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 180
    iget-object v1, p0, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity$LoginApprovalsAutoProvisionAppSessionListener;->a:Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity;

    iget-object v2, p0, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity$LoginApprovalsAutoProvisionAppSessionListener;->a:Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity;

    const v3, 0x7f0b0482

    invoke-virtual {v2, v3}, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity;->b(Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 188
    :goto_1
    iget-object v1, p0, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity$LoginApprovalsAutoProvisionAppSessionListener;->a:Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity;->showDialog(I)V

    goto :goto_0

    .line 185
    :cond_2
    iget-object v1, p0, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity$LoginApprovalsAutoProvisionAppSessionListener;->a:Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity;

    iget-object v2, p0, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity$LoginApprovalsAutoProvisionAppSessionListener;->a:Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity;

    const v3, 0x7f0b047f

    invoke-virtual {v2, v3}, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity;->a(Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 186
    iget-object v1, p0, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity$LoginApprovalsAutoProvisionAppSessionListener;->a:Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity;

    iget-object v2, p0, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity$LoginApprovalsAutoProvisionAppSessionListener;->a:Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity;

    const v3, 0x7f0b0483

    invoke-virtual {v2, v3}, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity;->b(Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1
.end method
