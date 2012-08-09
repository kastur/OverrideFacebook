.class Landroid/support/v4/app/ListFragment$2;
.super Ljava/lang/Object;
.source "ListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Landroid/support/v4/app/ListFragment;


# direct methods
.method constructor <init>(Landroid/support/v4/app/ListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Landroid/support/v4/app/ListFragment$2;->a:Landroid/support/v4/app/ListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Landroid/support/v4/app/ListFragment$2;->a:Landroid/support/v4/app/ListFragment;

    invoke-static {}, Landroid/support/v4/app/ListFragment;->a()V

    .line 59
    return-void
.end method
