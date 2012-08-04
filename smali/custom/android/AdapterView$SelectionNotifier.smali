.class Lcustom/android/AdapterView$SelectionNotifier;
.super Ljava/lang/Object;
.source "AdapterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcustom/android/AdapterView;


# direct methods
.method private constructor <init>(Lcustom/android/AdapterView;)V
    .locals 0
    .parameter

    .prologue
    .line 832
    iput-object p1, p0, Lcustom/android/AdapterView$SelectionNotifier;->a:Lcustom/android/AdapterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcustom/android/AdapterView;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 832
    invoke-direct {p0, p1}, Lcustom/android/AdapterView$SelectionNotifier;-><init>(Lcustom/android/AdapterView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 834
    iget-object v0, p0, Lcustom/android/AdapterView$SelectionNotifier;->a:Lcustom/android/AdapterView;

    iget-boolean v0, v0, Lcustom/android/AdapterView;->m:Z

    if-eqz v0, :cond_1

    .line 838
    iget-object v0, p0, Lcustom/android/AdapterView$SelectionNotifier;->a:Lcustom/android/AdapterView;

    invoke-virtual {v0}, Lcustom/android/AdapterView;->h()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 839
    iget-object v0, p0, Lcustom/android/AdapterView$SelectionNotifier;->a:Lcustom/android/AdapterView;

    invoke-virtual {v0, p0}, Lcustom/android/AdapterView;->post(Ljava/lang/Runnable;)Z

    .line 844
    :cond_0
    :goto_0
    return-void

    .line 842
    :cond_1
    iget-object v0, p0, Lcustom/android/AdapterView$SelectionNotifier;->a:Lcustom/android/AdapterView;

    invoke-static {v0}, Lcustom/android/AdapterView;->b(Lcustom/android/AdapterView;)V

    goto :goto_0
.end method
