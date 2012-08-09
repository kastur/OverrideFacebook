.class Landroid/support/v4/app/FragmentManagerImpl$4;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:I

.field private synthetic c:Landroid/support/v4/app/FragmentManagerImpl;


# direct methods
.method constructor <init>(Landroid/support/v4/app/FragmentManagerImpl;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 471
    iput-object p1, p0, Landroid/support/v4/app/FragmentManagerImpl$4;->c:Landroid/support/v4/app/FragmentManagerImpl;

    iput p2, p0, Landroid/support/v4/app/FragmentManagerImpl$4;->a:I

    iput p3, p0, Landroid/support/v4/app/FragmentManagerImpl$4;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 473
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$4;->c:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl$4;->c:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v1, v1, Landroid/support/v4/app/FragmentManagerImpl;->e:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    iget v2, p0, Landroid/support/v4/app/FragmentManagerImpl$4;->a:I

    iget v3, p0, Landroid/support/v4/app/FragmentManagerImpl$4;->b:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentManagerImpl;->a(Ljava/lang/String;II)Z

    .line 474
    return-void
.end method
