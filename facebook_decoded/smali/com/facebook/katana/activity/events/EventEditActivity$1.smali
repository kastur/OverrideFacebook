.class Lcom/facebook/katana/activity/events/EventEditActivity$1;
.super Ljava/lang/Object;
.source "EventEditActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/events/EventEditActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/events/EventEditActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/facebook/katana/activity/events/EventEditActivity$1;->a:Lcom/facebook/katana/activity/events/EventEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 96
    add-int/lit8 v0, p3, -0x1

    .line 97
    iget-object v1, p0, Lcom/facebook/katana/activity/events/EventEditActivity$1;->a:Lcom/facebook/katana/activity/events/EventEditActivity;

    invoke-static {v1}, Lcom/facebook/katana/activity/events/EventEditActivity;->a(Lcom/facebook/katana/activity/events/EventEditActivity;)Lcom/facebook/katana/features/composer/TimeAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/katana/features/composer/TimeAdapter;->d(I)V

    .line 98
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventEditActivity$1;->a:Lcom/facebook/katana/activity/events/EventEditActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/events/EventEditActivity$1;->a:Lcom/facebook/katana/activity/events/EventEditActivity;

    invoke-static {v1}, Lcom/facebook/katana/activity/events/EventEditActivity;->a(Lcom/facebook/katana/activity/events/EventEditActivity;)Lcom/facebook/katana/features/composer/TimeAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/katana/features/composer/TimeAdapter;->f()Lcom/facebook/katana/features/composer/TimeAdapter$Period;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/katana/features/composer/TimeAdapter$Period;->getTimestamp()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/activity/events/EventEditActivity;->a(Lcom/facebook/katana/activity/events/EventEditActivity;J)J

    .line 99
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventEditActivity$1;->a:Lcom/facebook/katana/activity/events/EventEditActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/events/EventEditActivity$1;->a:Lcom/facebook/katana/activity/events/EventEditActivity;

    invoke-static {v1}, Lcom/facebook/katana/activity/events/EventEditActivity;->a(Lcom/facebook/katana/activity/events/EventEditActivity;)Lcom/facebook/katana/features/composer/TimeAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/katana/features/composer/TimeAdapter;->f()Lcom/facebook/katana/features/composer/TimeAdapter$Period;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/katana/features/composer/TimeAdapter$Period;->getGranularity()I

    move-result v1

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/events/EventEditActivity;->a(Lcom/facebook/katana/activity/events/EventEditActivity;I)I

    .line 100
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventEditActivity$1;->a:Lcom/facebook/katana/activity/events/EventEditActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/events/EventEditActivity;->b(Lcom/facebook/katana/activity/events/EventEditActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/activity/events/EventEditActivity$1;->a:Lcom/facebook/katana/activity/events/EventEditActivity;

    invoke-static {v1}, Lcom/facebook/katana/activity/events/EventEditActivity;->a(Lcom/facebook/katana/activity/events/EventEditActivity;)Lcom/facebook/katana/features/composer/TimeAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/katana/features/composer/TimeAdapter;->f()Lcom/facebook/katana/features/composer/TimeAdapter$Period;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/activity/events/EventEditActivity$1;->a:Lcom/facebook/katana/activity/events/EventEditActivity;

    invoke-virtual {v1, v2}, Lcom/facebook/katana/features/composer/TimeAdapter$Period;->localizedString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventEditActivity$1;->a:Lcom/facebook/katana/activity/events/EventEditActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/events/EventEditActivity;->g()V

    .line 103
    return-void
.end method
