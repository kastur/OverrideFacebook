.class public Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$FacewebAppSessionListener;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "FacewebChromeFragment.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;


# direct methods
.method protected constructor <init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 2554
    iput-object p1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$FacewebAppSessionListener;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2558
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$FacewebAppSessionListener;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    iget-object v0, v0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    invoke-virtual {v0}, Lcom/facebook/katana/webview/FacewebWebView;->d()V

    .line 2559
    return-void
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;ILcom/facebook/katana/model/FacebookPhoto;JJ)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2606
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 2608
    :try_start_0
    const-string v0, "action"

    const-string v2, "didUploadPhoto"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2609
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 2610
    invoke-virtual {p6}, Lcom/facebook/katana/model/FacebookPhoto;->l()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 2611
    const-string v2, "photo_fbids"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2615
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2616
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2617
    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$FacewebAppSessionListener;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-static {v1}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->j(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2618
    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$FacewebAppSessionListener;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    iget-object v1, v1, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    iget-object v2, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$FacewebAppSessionListener;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-static {v2}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->j(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShareHandler;

    iget-object v4, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$FacewebAppSessionListener;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-direct {v3, v4}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShareHandler;-><init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;Ljava/util/List;Lcom/facebook/katana/webview/FacebookWebView$JsReturnHandler;)V

    .line 2624
    :cond_0
    :goto_1
    return-void

    .line 2612
    :catch_0
    move-exception v0

    .line 2613
    iget-object v2, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$FacewebAppSessionListener;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-virtual {v2}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->H()Ljava/lang/String;

    move-result-object v2

    const-string v3, "failed to construct arguments object"

    invoke-static {v2, v3, v0}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2620
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$FacewebAppSessionListener;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-static {v0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->f(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;)J

    move-result-wide v0

    cmp-long v0, p9, v0

    if-nez v0, :cond_0

    .line 2621
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$FacewebAppSessionListener;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    iget-object v0, v0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    invoke-virtual {v0}, Lcom/facebook/katana/webview/FacewebWebView;->e()V

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Lcom/facebook/katana/model/FacebookPost;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    .line 2569
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$FacewebAppSessionListener;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-static {v0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->n(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2570
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$FacewebAppSessionListener;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->c(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 2571
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_2

    .line 2572
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 2574
    :try_start_0
    const-string v0, "action"

    const-string v2, "didCheckin"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2575
    const-string v0, "checkin_id"

    invoke-virtual {p5}, Lcom/facebook/katana/model/FacebookPost;->c()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2579
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2580
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2582
    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$FacewebAppSessionListener;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-virtual {v1, v4}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->e(I)V

    .line 2583
    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$FacewebAppSessionListener;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-static {v1}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->j(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2584
    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$FacewebAppSessionListener;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    iget-object v1, v1, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    iget-object v2, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$FacewebAppSessionListener;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-static {v2}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->j(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShareHandler;

    iget-object v4, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$FacewebAppSessionListener;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-direct {v3, v4}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShareHandler;-><init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;Ljava/util/List;Lcom/facebook/katana/webview/FacebookWebView$JsReturnHandler;)V

    .line 2598
    :cond_0
    :goto_1
    return-void

    .line 2576
    :catch_0
    move-exception v0

    .line 2577
    iget-object v2, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$FacewebAppSessionListener;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-virtual {v2}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->H()Ljava/lang/String;

    move-result-object v2

    const-string v3, "inconceivable exception"

    invoke-static {v2, v3, v0}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2587
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$FacewebAppSessionListener;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    iget-object v0, v0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    invoke-virtual {v0}, Lcom/facebook/katana/webview/FacewebWebView;->e()V

    .line 2588
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$FacewebAppSessionListener;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-virtual {v0, v4}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->f(I)V

    goto :goto_1

    .line 2592
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$FacewebAppSessionListener;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$FacewebAppSessionListener;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    const v2, 0x7f0b03df

    invoke-virtual {v1, v2}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p3, p4}, Lcom/facebook/katana/util/StringUtils;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    .line 2595
    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$FacewebAppSessionListener;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-virtual {v1}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
