.class Lcom/facebook/katana/WidgetActivity$2;
.super Ljava/lang/Object;
.source "WidgetActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Landroid/widget/TextView;

.field private synthetic b:Lcom/facebook/katana/WidgetActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/WidgetActivity;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/facebook/katana/WidgetActivity$2;->b:Lcom/facebook/katana/WidgetActivity;

    iput-object p2, p0, Lcom/facebook/katana/WidgetActivity$2;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/facebook/katana/WidgetActivity$2;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/facebook/katana/WidgetActivity$2;->b:Lcom/facebook/katana/WidgetActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/WidgetActivity;->finish()V

    .line 154
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/facebook/katana/WidgetActivity$2;->b:Lcom/facebook/katana/WidgetActivity;

    invoke-static {v1, v0}, Lcom/facebook/katana/WidgetActivity;->a(Lcom/facebook/katana/WidgetActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 141
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/facebook/katana/WidgetActivity$2;->b:Lcom/facebook/katana/WidgetActivity;

    const-class v3, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    const-string v2, "type"

    const/16 v3, 0x5c

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 145
    const-string v2, "status"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    iget-object v0, p0, Lcom/facebook/katana/WidgetActivity$2;->b:Lcom/facebook/katana/WidgetActivity;

    const/4 v2, 0x0

    const/high16 v3, 0x1000

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V

    .line 150
    iget-object v0, p0, Lcom/facebook/katana/WidgetActivity$2;->b:Lcom/facebook/katana/WidgetActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/facebook/katana/WidgetActivity;->showDialog(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    iget-object v1, p0, Lcom/facebook/katana/WidgetActivity$2;->b:Lcom/facebook/katana/WidgetActivity;

    invoke-virtual {v1}, Lcom/facebook/katana/WidgetActivity;->r()Ljava/lang/String;

    move-result-object v1

    const-string v2, "widget share failed"

    invoke-static {v1, v2, v0}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
