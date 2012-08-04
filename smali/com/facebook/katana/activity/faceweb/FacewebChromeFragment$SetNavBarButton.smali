.class Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetNavBarButton;
.super Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$StatefulNativeUICallHandler;
.source "FacewebChromeFragment.java"


# instance fields
.field final synthetic a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;Landroid/os/Handler;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2261
    iput-object p1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetNavBarButton;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    .line 2262
    invoke-direct {p0, p2}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$StatefulNativeUICallHandler;-><init>(Landroid/os/Handler;)V

    .line 2257
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetNavBarButton;->e:I

    .line 2258
    iput-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetNavBarButton;->f:Ljava/lang/String;

    .line 2259
    iput-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetNavBarButton;->g:Ljava/lang/String;

    .line 2263
    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    const v0, 0x7f02017c

    .line 2272
    const-string v1, "compose"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2273
    const v0, 0x7f02017d

    .line 2317
    :cond_0
    :goto_0
    return v0

    .line 2275
    :cond_1
    const-string v1, "add"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2276
    const v0, 0x7f02017a

    goto :goto_0

    .line 2278
    :cond_2
    const-string v1, "action"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2279
    const v0, 0x7f020179

    goto :goto_0

    .line 2281
    :cond_3
    const-string v1, "feed_filter_live"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2282
    const v0, 0x7f0200ae

    goto :goto_0

    .line 2284
    :cond_4
    const-string v1, "feed_filter_h_chr"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2285
    const v0, 0x7f0200aa

    goto :goto_0

    .line 2287
    :cond_5
    const-string v1, "feed_filter_status"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2288
    const v0, 0x7f0200ad

    goto :goto_0

    .line 2290
    :cond_6
    const-string v1, "feed_filter_photos"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2291
    const v0, 0x7f0200ac

    goto :goto_0

    .line 2293
    :cond_7
    const-string v1, "feed_filter_links"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2294
    const v0, 0x7f0200a9

    goto :goto_0

    .line 2296
    :cond_8
    const-string v1, "feed_filter_pages"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2297
    const v0, 0x7f0200ab

    goto :goto_0

    .line 2299
    :cond_9
    const-string v1, "feed_filter_events"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2300
    const v0, 0x7f0200a7

    goto :goto_0

    .line 2302
    :cond_a
    const-string v1, "feed_filter_videos"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2303
    const v0, 0x7f0200af

    goto :goto_0

    .line 2305
    :cond_b
    const-string v1, "feed_filter_lists"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2306
    const v0, 0x7f0200a8

    goto/16 :goto_0

    .line 2308
    :cond_c
    const-string v1, "like"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2311
    const-string v1, "unlike"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2314
    const-string v0, "feed_find_friends"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2315
    const v0, 0x7f0200b0

    goto/16 :goto_0

    .line 2317
    :cond_d
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetNavBarButton;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 2197
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetNavBarButton;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/facebook/katana/webview/FacebookWebView;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 2322
    const-string v0, "true"

    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetNavBarButton;->c:Lcom/facebook/katana/webview/FacewebPalCall;

    invoke-virtual {p2}, Lcom/facebook/katana/webview/FacebookWebView;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "isDisabled"

    invoke-interface {v1, v2, v3}, Lcom/facebook/katana/webview/FacewebPalCall;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2348
    :cond_0
    :goto_0
    return-void

    .line 2328
    :cond_1
    const-string v0, "right"

    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetNavBarButton;->c:Lcom/facebook/katana/webview/FacewebPalCall;

    invoke-virtual {p2}, Lcom/facebook/katana/webview/FacebookWebView;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "position"

    invoke-interface {v1, v2, v3}, Lcom/facebook/katana/webview/FacewebPalCall;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2333
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetNavBarButton;->c:Lcom/facebook/katana/webview/FacewebPalCall;

    invoke-virtual {p2}, Lcom/facebook/katana/webview/FacebookWebView;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "script"

    invoke-interface {v0, v1, v2}, Lcom/facebook/katana/webview/FacewebPalCall;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetNavBarButton;->d:Ljava/lang/String;

    .line 2335
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetNavBarButton;->c:Lcom/facebook/katana/webview/FacewebPalCall;

    invoke-virtual {p2}, Lcom/facebook/katana/webview/FacebookWebView;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-interface {v0, v1, v2}, Lcom/facebook/katana/webview/FacewebPalCall;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2336
    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetNavBarButton;->c:Lcom/facebook/katana/webview/FacewebPalCall;

    invoke-virtual {p2}, Lcom/facebook/katana/webview/FacebookWebView;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "type"

    invoke-interface {v1, v2, v3}, Lcom/facebook/katana/webview/FacewebPalCall;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2338
    invoke-static {v1}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetNavBarButton;->a(Ljava/lang/String;)I

    move-result v2

    .line 2339
    if-ltz v2, :cond_2

    .line 2340
    iput v2, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetNavBarButton;->e:I

    .line 2341
    iput-object v4, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetNavBarButton;->f:Ljava/lang/String;

    .line 2342
    iput-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetNavBarButton;->g:Ljava/lang/String;

    goto :goto_0

    .line 2344
    :cond_2
    const/4 v1, -0x1

    iput v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetNavBarButton;->e:I

    .line 2345
    iput-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetNavBarButton;->f:Ljava/lang/String;

    .line 2346
    iput-object v4, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetNavBarButton;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method public final b(Landroid/content/Context;Lcom/facebook/katana/webview/FacebookWebView;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 2353
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetNavBarButton;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->G()Lcom/facebook/katana/activity/BaseFacebookActivity;

    move-result-object v0

    .line 2354
    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetNavBarButton;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-virtual {v1}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 2385
    :cond_0
    :goto_0
    return-void

    .line 2358
    :cond_1
    iget v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetNavBarButton;->e:I

    iget-object v2, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetNavBarButton;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/activity/BaseFacebookActivity;->a(ILjava/lang/String;)V

    .line 2360
    new-instance v1, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetNavBarButton$1;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetNavBarButton$1;-><init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetNavBarButton;)V

    .line 2367
    iget v2, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetNavBarButton;->e:I

    if-lez v2, :cond_3

    .line 2369
    invoke-virtual {v0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->m()Lcom/facebook/katana/activity/FacebookActivityDelegate;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->a(Landroid/view/View$OnClickListener;)V

    .line 2371
    const v1, 0x7f08002e

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/BaseFacebookActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 2373
    const/4 v1, 0x0

    .line 2374
    iget v2, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetNavBarButton;->e:I

    const v3, 0x7f02017c

    if-ne v2, v3, :cond_2

    .line 2376
    iget-object v2, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetNavBarButton;->g:Ljava/lang/String;

    const-string v3, "like"

    invoke-static {v2, v3}, Lcom/facebook/katana/util/StringUtils;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2377
    const/4 v1, 0x1

    .line 2380
    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_0

    .line 2381
    :cond_3
    iget-object v2, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetNavBarButton;->f:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2383
    invoke-virtual {v0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->m()Lcom/facebook/katana/activity/FacebookActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->a(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
