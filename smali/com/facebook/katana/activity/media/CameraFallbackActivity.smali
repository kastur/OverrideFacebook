.class public Lcom/facebook/katana/activity/media/CameraFallbackActivity;
.super Lcom/facebook/katana/activity/BaseFacebookActivity;
.source "CameraFallbackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookActivity;->a(Landroid/os/Bundle;)V

    .line 20
    const v0, 0x7f030013

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CameraFallbackActivity;->setContentView(I)V

    .line 22
    const v0, 0x7f080055

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CameraFallbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    const v0, 0x7f080056

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CameraFallbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    const v0, 0x7f080057

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CameraFallbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    const v0, 0x7f080058

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CameraFallbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 31
    const/4 v0, -0x1

    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 46
    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CameraFallbackActivity;->setResult(I)V

    .line 47
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/CameraFallbackActivity;->finish()V

    .line 48
    return-void

    .line 34
    :pswitch_0
    const/4 v0, 0x4

    .line 35
    goto :goto_0

    .line 37
    :pswitch_1
    const/4 v0, 0x2

    .line 38
    goto :goto_0

    .line 40
    :pswitch_2
    const/4 v0, 0x1

    .line 41
    goto :goto_0

    .line 43
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x7f080055
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
