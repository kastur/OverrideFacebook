.class public Lcom/facebook/katana/features/uberbar/UberbarDelegate;
.super Ljava/lang/Object;
.source "UberbarDelegate.java"


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:Landroid/view/View;

.field private c:Lcom/facebook/katana/webview/FacewebWebView;

.field private d:Landroid/os/Handler;

.field private e:Landroid/app/Activity;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/EditText;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/facebook/katana/features/uberbar/UberbarDelegate$1;

    invoke-direct {v0, p0}, Lcom/facebook/katana/features/uberbar/UberbarDelegate$1;-><init>(Lcom/facebook/katana/features/uberbar/UberbarDelegate;)V

    iput-object v0, p0, Lcom/facebook/katana/features/uberbar/UberbarDelegate;->g:Landroid/text/TextWatcher;

    .line 57
    iput-object p3, p0, Lcom/facebook/katana/features/uberbar/UberbarDelegate;->a:Landroid/view/ViewGroup;

    .line 58
    iput-object p4, p0, Lcom/facebook/katana/features/uberbar/UberbarDelegate;->b:Landroid/view/View;

    .line 60
    iput-object p1, p0, Lcom/facebook/katana/features/uberbar/UberbarDelegate;->e:Landroid/app/Activity;

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/features/uberbar/UberbarDelegate;->d:Landroid/os/Handler;

    .line 62
    iput-object p2, p0, Lcom/facebook/katana/features/uberbar/UberbarDelegate;->f:Landroid/widget/EditText;

    .line 63
    iget-object v0, p0, Lcom/facebook/katana/features/uberbar/UberbarDelegate;->f:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/facebook/katana/features/uberbar/UberbarDelegate;->g:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 65
    iget-object v0, p0, Lcom/facebook/katana/features/uberbar/UberbarDelegate;->b:Landroid/view/View;

    new-instance v1, Lcom/facebook/katana/features/uberbar/UberbarDelegate$2;

    invoke-direct {v1, p0}, Lcom/facebook/katana/features/uberbar/UberbarDelegate$2;-><init>(Lcom/facebook/katana/features/uberbar/UberbarDelegate;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 74
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/features/uberbar/UberbarDelegate;)Lcom/facebook/katana/webview/FacewebWebView;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/facebook/katana/features/uberbar/UberbarDelegate;->c:Lcom/facebook/katana/webview/FacewebWebView;

    return-object v0
.end method

.method private a(Landroid/text/Editable;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 150
    if-nez p1, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/facebook/katana/features/uberbar/UberbarDelegate;->c()V

    .line 167
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 157
    const-string v1, "fwUpdateQuery({\'query\' : \"%s\" });"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-direct {p0}, Lcom/facebook/katana/features/uberbar/UberbarDelegate;->d()Lcom/facebook/katana/webview/FacewebWebView;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Lcom/facebook/katana/webview/FacewebWebView;->b(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$JsReturnHandler;)V

    .line 159
    invoke-direct {p0}, Lcom/facebook/katana/features/uberbar/UberbarDelegate;->e()V

    goto :goto_0

    .line 163
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/katana/features/uberbar/UberbarDelegate;->c()V

    .line 164
    const-string v0, "fwUpdateQuery({\'query\' : \" \" });"

    .line 165
    invoke-direct {p0}, Lcom/facebook/katana/features/uberbar/UberbarDelegate;->d()Lcom/facebook/katana/webview/FacewebWebView;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Lcom/facebook/katana/webview/FacewebWebView;->b(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$JsReturnHandler;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/katana/features/uberbar/UberbarDelegate;Landroid/text/Editable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/facebook/katana/features/uberbar/UberbarDelegate;->a(Landroid/text/Editable;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/features/uberbar/UberbarDelegate;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/facebook/katana/features/uberbar/UberbarDelegate;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 4
    .parameter

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 144
    iget-object v3, p0, Lcom/facebook/katana/features/uberbar/UberbarDelegate;->a:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/facebook/katana/features/uberbar/UberbarDelegate;->b:Landroid/view/View;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 146
    return-void

    :cond_0
    move v0, v2

    .line 144
    goto :goto_0

    :cond_1
    move v2, v1

    .line 145
    goto :goto_1
.end method

.method static synthetic b(Lcom/facebook/katana/features/uberbar/UberbarDelegate;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/facebook/katana/features/uberbar/UberbarDelegate;->f()V

    return-void
.end method

.method static synthetic c(Lcom/facebook/katana/features/uberbar/UberbarDelegate;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/facebook/katana/features/uberbar/UberbarDelegate;->e:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/katana/features/uberbar/UberbarDelegate;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/facebook/katana/features/uberbar/UberbarDelegate;->f:Landroid/widget/EditText;

    return-object v0
.end method

.method private d()Lcom/facebook/katana/webview/FacewebWebView;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, -0x1

    .line 81
    iget-object v0, p0, Lcom/facebook/katana/features/uberbar/UberbarDelegate;->c:Lcom/facebook/katana/webview/FacewebWebView;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/facebook/katana/features/uberbar/UberbarDelegate$3;

    invoke-direct {v0, p0}, Lcom/facebook/katana/features/uberbar/UberbarDelegate$3;-><init>(Lcom/facebook/katana/features/uberbar/UberbarDelegate;)V

    .line 95
    iget-object v1, p0, Lcom/facebook/katana/features/uberbar/UberbarDelegate;->e:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/facebook/katana/webview/FacewebWebView;->a(Landroid/content/Context;Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewListener;)Lcom/facebook/katana/webview/FacewebWebView;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/features/uberbar/UberbarDelegate;->c:Lcom/facebook/katana/webview/FacewebWebView;

    .line 96
    iget-object v0, p0, Lcom/facebook/katana/features/uberbar/UberbarDelegate;->c:Lcom/facebook/katana/webview/FacewebWebView;

    invoke-virtual {v0, v4}, Lcom/facebook/katana/webview/FacewebWebView;->setBackgroundColor(I)V

    .line 97
    iget-object v0, p0, Lcom/facebook/katana/features/uberbar/UberbarDelegate;->c:Lcom/facebook/katana/webview/FacewebWebView;

    const v1, 0x7f090043

    invoke-virtual {v0, v1}, Lcom/facebook/katana/webview/FacewebWebView;->setBackgroundResource(I)V

    .line 99
    iget-object v0, p0, Lcom/facebook/katana/features/uberbar/UberbarDelegate;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/facebook/katana/features/uberbar/UberbarDelegate;->c:Lcom/facebook/katana/webview/FacewebWebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 100
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 102
    iget-object v1, p0, Lcom/facebook/katana/features/uberbar/UberbarDelegate;->c:Lcom/facebook/katana/webview/FacewebWebView;

    invoke-virtual {v1, v0}, Lcom/facebook/katana/webview/FacewebWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    iget-object v0, p0, Lcom/facebook/katana/features/uberbar/UberbarDelegate;->c:Lcom/facebook/katana/webview/FacewebWebView;

    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Lcom/facebook/katana/webview/FacewebWebView;->setScrollBarStyle(I)V

    .line 104
    iget-object v0, p0, Lcom/facebook/katana/features/uberbar/UberbarDelegate;->c:Lcom/facebook/katana/webview/FacewebWebView;

    const-string v1, "/search/uberbar"

    invoke-virtual {v0, v1}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/facebook/katana/features/uberbar/UberbarDelegate;->c:Lcom/facebook/katana/webview/FacewebWebView;

    const-string v1, "openDialogWebview"

    new-instance v2, Lcom/facebook/katana/activity/apps/OpenWebViewHandler;

    iget-object v3, p0, Lcom/facebook/katana/features/uberbar/UberbarDelegate;->d:Landroid/os/Handler;

    invoke-direct {v2, v3}, Lcom/facebook/katana/activity/apps/OpenWebViewHandler;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;)V

    .line 107
    iget-object v0, p0, Lcom/facebook/katana/features/uberbar/UberbarDelegate;->c:Lcom/facebook/katana/webview/FacewebWebView;

    const-string v1, "closeDialogWebview"

    new-instance v2, Lcom/facebook/katana/activity/apps/CloseWebViewHandler;

    iget-object v3, p0, Lcom/facebook/katana/features/uberbar/UberbarDelegate;->d:Landroid/os/Handler;

    invoke-direct {v2, v3}, Lcom/facebook/katana/activity/apps/CloseWebViewHandler;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;)V

    .line 109
    iget-object v0, p0, Lcom/facebook/katana/features/uberbar/UberbarDelegate;->c:Lcom/facebook/katana/webview/FacewebWebView;

    const-string v1, "nativethirdparty"

    new-instance v2, Lcom/facebook/katana/activity/apps/LaunchApplicationHandler;

    iget-object v3, p0, Lcom/facebook/katana/features/uberbar/UberbarDelegate;->d:Landroid/os/Handler;

    invoke-direct {v2, v3}, Lcom/facebook/katana/activity/apps/LaunchApplicationHandler;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;)V

    .line 111
    iget-object v0, p0, Lcom/facebook/katana/features/uberbar/UberbarDelegate;->c:Lcom/facebook/katana/webview/FacewebWebView;

    new-instance v1, Lcom/facebook/katana/features/uberbar/UberbarDelegate$4;

    invoke-direct {v1, p0}, Lcom/facebook/katana/features/uberbar/UberbarDelegate$4;-><init>(Lcom/facebook/katana/features/uberbar/UberbarDelegate;)V

    invoke-virtual {v0, v1}, Lcom/facebook/katana/webview/FacewebWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 134
    iget-object v0, p0, Lcom/facebook/katana/features/uberbar/UberbarDelegate;->c:Lcom/facebook/katana/webview/FacewebWebView;

    const-string v1, "ubersearchReady"

    new-instance v2, Lcom/facebook/katana/features/uberbar/UberbarDelegate$SearchHandler;

    invoke-direct {v2, p0, v4}, Lcom/facebook/katana/features/uberbar/UberbarDelegate$SearchHandler;-><init>(Lcom/facebook/katana/features/uberbar/UberbarDelegate;B)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;)V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/features/uberbar/UberbarDelegate;->c:Lcom/facebook/katana/webview/FacewebWebView;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/facebook/katana/features/uberbar/UberbarDelegate;->a:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 216
    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    .line 219
    iget-object v0, p0, Lcom/facebook/katana/features/uberbar/UberbarDelegate;->e:Landroid/app/Activity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 221
    iget-object v1, p0, Lcom/facebook/katana/features/uberbar/UberbarDelegate;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 222
    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/katana/webview/FacewebWebView;
    .locals 1

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/facebook/katana/features/uberbar/UberbarDelegate;->d()Lcom/facebook/katana/webview/FacewebWebView;

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/facebook/katana/features/uberbar/UberbarDelegate;->f:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/facebook/katana/features/uberbar/UberbarDelegate;->g:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 203
    iget-object v0, p0, Lcom/facebook/katana/features/uberbar/UberbarDelegate;->c:Lcom/facebook/katana/webview/FacewebWebView;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/facebook/katana/features/uberbar/UberbarDelegate;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/facebook/katana/features/uberbar/UberbarDelegate;->c:Lcom/facebook/katana/webview/FacewebWebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 205
    iget-object v0, p0, Lcom/facebook/katana/features/uberbar/UberbarDelegate;->c:Lcom/facebook/katana/webview/FacewebWebView;

    invoke-virtual {v0}, Lcom/facebook/katana/webview/FacewebWebView;->destroy()V

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/features/uberbar/UberbarDelegate;->c:Lcom/facebook/katana/webview/FacewebWebView;

    .line 208
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/facebook/katana/features/uberbar/UberbarDelegate;->a:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 212
    return-void
.end method
