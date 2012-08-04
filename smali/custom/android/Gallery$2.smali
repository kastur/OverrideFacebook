.class Lcustom/android/Gallery$2;
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
    .line 1159
    iput-object p1, p0, Lcustom/android/Gallery$2;->a:Lcustom/android/Gallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1161
    iget-object v0, p0, Lcustom/android/Gallery$2;->a:Lcustom/android/Gallery;

    invoke-static {v0}, Lcustom/android/Gallery;->a(Lcustom/android/Gallery;)V

    .line 1162
    return-void
.end method
