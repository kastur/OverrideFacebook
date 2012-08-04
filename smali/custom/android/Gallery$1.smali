.class Lcustom/android/Gallery$1;
.super Ljava/lang/Object;
.source "Gallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcustom/android/Gallery;


# direct methods
.method constructor <init>(Lcustom/android/Gallery;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcustom/android/Gallery$1;->a:Lcustom/android/Gallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcustom/android/Gallery$1;->a:Lcustom/android/Gallery;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcustom/android/Gallery;->a(Lcustom/android/Gallery;Z)Z

    .line 137
    iget-object v0, p0, Lcustom/android/Gallery$1;->a:Lcustom/android/Gallery;

    invoke-virtual {v0}, Lcustom/android/Gallery;->l()V

    .line 138
    return-void
.end method
