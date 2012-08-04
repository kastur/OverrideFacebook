.class Lcom/facebook/katana/activity/BookmarksAdapter$2;
.super Ljava/lang/Object;
.source "BookmarksAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/BookmarksAdapter;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/BookmarksAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 409
    iput-object p1, p0, Lcom/facebook/katana/activity/BookmarksAdapter$2;->a:Lcom/facebook/katana/activity/BookmarksAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 412
    packed-switch p2, :pswitch_data_0

    .line 432
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 433
    return-void

    .line 414
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/katana/activity/BookmarksAdapter$2;->a:Lcom/facebook/katana/activity/BookmarksAdapter;

    const-string v1, "fb://account_settings"

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/BookmarksAdapter;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 418
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/katana/activity/BookmarksAdapter$2;->a:Lcom/facebook/katana/activity/BookmarksAdapter;

    invoke-static {v0}, Lcom/facebook/katana/activity/BookmarksAdapter;->a(Lcom/facebook/katana/activity/BookmarksAdapter;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/facebook/katana/activity/BookmarksAdapter$2;->a:Lcom/facebook/katana/activity/BookmarksAdapter;

    invoke-static {v2}, Lcom/facebook/katana/activity/BookmarksAdapter;->a(Lcom/facebook/katana/activity/BookmarksAdapter;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/facebook/katana/SettingsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 423
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/katana/activity/BookmarksAdapter$2;->a:Lcom/facebook/katana/activity/BookmarksAdapter;

    invoke-static {v0}, Lcom/facebook/katana/activity/BookmarksAdapter;->a(Lcom/facebook/katana/activity/BookmarksAdapter;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/facebook/katana/activity/BookmarksAdapter$2;->a:Lcom/facebook/katana/activity/BookmarksAdapter;

    invoke-static {v2}, Lcom/facebook/katana/activity/BookmarksAdapter;->a(Lcom/facebook/katana/activity/BookmarksAdapter;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 428
    :pswitch_3
    iget-object v0, p0, Lcom/facebook/katana/activity/BookmarksAdapter$2;->a:Lcom/facebook/katana/activity/BookmarksAdapter;

    invoke-static {v0}, Lcom/facebook/katana/activity/BookmarksAdapter;->b(Lcom/facebook/katana/activity/BookmarksAdapter;)Lcom/facebook/katana/activity/FacebookActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->n()V

    goto :goto_0

    .line 412
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
