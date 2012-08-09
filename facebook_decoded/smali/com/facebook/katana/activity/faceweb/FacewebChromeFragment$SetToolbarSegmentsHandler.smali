.class public Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetToolbarSegmentsHandler;
.super Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$StatefulNativeUICallHandler;
.source "FacewebChromeFragment.java"


# instance fields
.field private a:[Ljava/lang/String;

.field private d:I

.field private synthetic e:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1228
    iput-object p1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetToolbarSegmentsHandler;->e:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    .line 1229
    invoke-direct {p0, p2}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$StatefulNativeUICallHandler;-><init>(Landroid/os/Handler;)V

    .line 1208
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetToolbarSegmentsHandler;->d:I

    .line 1230
    return-void
.end method

.method private a(ILjava/lang/String;)Landroid/widget/RadioButton;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1295
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetToolbarSegmentsHandler;->e:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030103

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 1297
    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setButtonDrawable(I)V

    .line 1298
    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setId(I)V

    .line 1299
    invoke-virtual {v0, p2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 1301
    return-object v0
.end method

.method private a(I)V
    .locals 3
    .parameter

    .prologue
    .line 1211
    iget v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetToolbarSegmentsHandler;->d:I

    if-ne v0, p1, :cond_1

    .line 1225
    :cond_0
    :goto_0
    return-void

    .line 1214
    :cond_1
    iput p1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetToolbarSegmentsHandler;->d:I

    .line 1215
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetToolbarSegmentsHandler;->a:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 1222
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetToolbarSegmentsHandler;->e:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    iget-object v0, v0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    if-eqz v0, :cond_0

    .line 1223
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetToolbarSegmentsHandler;->e:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    iget-object v0, v0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetToolbarSegmentsHandler;->a:[Ljava/lang/String;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/webview/FacewebWebView;->b(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$JsReturnHandler;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetToolbarSegmentsHandler;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1199
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetToolbarSegmentsHandler;->a(I)V

    return-void
.end method


# virtual methods
.method public final b(Landroid/content/Context;Lcom/facebook/katana/webview/FacebookWebView;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1235
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetToolbarSegmentsHandler;->e:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->t()Landroid/view/View;

    move-result-object v0

    .line 1236
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetToolbarSegmentsHandler;->c:Lcom/facebook/katana/webview/FacewebPalCall;

    if-nez v2, :cond_1

    .line 1285
    :cond_0
    :goto_0
    return-void

    .line 1241
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetToolbarSegmentsHandler;->c:Lcom/facebook/katana/webview/FacewebPalCall;

    invoke-virtual {p2}, Lcom/facebook/katana/webview/FacebookWebView;->c()Ljava/lang/String;

    move-result-object v3

    const-string v4, "segments"

    invoke-interface {v2, v3, v4}, Lcom/facebook/katana/webview/FacewebPalCall;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1242
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1244
    const v2, 0x7f08011a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 1245
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetToolbarSegmentsHandler;->a:[Ljava/lang/String;

    .line 1246
    invoke-virtual {v0}, Landroid/widget/RadioGroup;->removeAllViews()V

    .line 1247
    invoke-virtual {v0}, Landroid/widget/RadioGroup;->clearCheck()V

    .line 1248
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1249
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 1251
    const-string v4, "title"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1252
    const-string v5, "callback"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1253
    iget-object v5, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetToolbarSegmentsHandler;->a:[Ljava/lang/String;

    aput-object v2, v5, v1

    .line 1255
    invoke-direct {p0, v1, v4}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetToolbarSegmentsHandler;->a(ILjava/lang/String;)Landroid/widget/RadioButton;

    move-result-object v4

    .line 1256
    invoke-virtual {v4, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1259
    invoke-virtual {v0, v4}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 1260
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/high16 v7, 0x3f80

    invoke-direct {v2, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1248
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1265
    :cond_2
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetToolbarSegmentsHandler;->d:I

    .line 1266
    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetToolbarSegmentsHandler;->c:Lcom/facebook/katana/webview/FacewebPalCall;

    invoke-virtual {p2}, Lcom/facebook/katana/webview/FacebookWebView;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "current_tab"

    invoke-interface {v1, v2, v3}, Lcom/facebook/katana/webview/FacewebPalCall;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1267
    if-eqz v1, :cond_3

    .line 1268
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetToolbarSegmentsHandler;->d:I

    .line 1270
    :cond_3
    iget v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetToolbarSegmentsHandler;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 1272
    new-instance v1, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetToolbarSegmentsHandler$1;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetToolbarSegmentsHandler$1;-><init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetToolbarSegmentsHandler;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 1280
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setVisibility(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1281
    :catch_0
    move-exception v0

    .line 1283
    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetToolbarSegmentsHandler;->e:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-virtual {v1}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->H()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Data format error"

    invoke-static {v1, v2, v0}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method
