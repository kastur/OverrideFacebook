.class Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$CategoryListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SuggestPlaceInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/facebook/katana/model/PageTopic;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;

.field private b:Landroid/content/Context;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const v0, 0x7f0300d7

    .line 190
    iput-object p1, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$CategoryListAdapter;->a:Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;

    .line 191
    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 192
    iput-object p2, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$CategoryListAdapter;->b:Landroid/content/Context;

    .line 193
    iput v0, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$CategoryListAdapter;->c:I

    .line 194
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 203
    .line 205
    if-nez p2, :cond_0

    .line 206
    iget-object v0, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$CategoryListAdapter;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 207
    iget v1, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$CategoryListAdapter;->c:I

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 208
    new-instance v1, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$CategoryListAdapter$ViewHolder;

    invoke-direct {v1, p0, v2}, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$CategoryListAdapter$ViewHolder;-><init>(Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$CategoryListAdapter;B)V

    .line 209
    const v0, 0x7f08028b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$CategoryListAdapter$ViewHolder;->b:Landroid/widget/TextView;

    .line 210
    const v0, 0x7f08028c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, v1, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$CategoryListAdapter$ViewHolder;->a:Landroid/widget/ImageButton;

    .line 211
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 216
    :goto_0
    invoke-virtual {p0, p1}, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$CategoryListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/PageTopic;

    .line 217
    iget-object v2, v1, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$CategoryListAdapter$ViewHolder;->a:Landroid/widget/ImageButton;

    new-instance v3, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$CategoryListAdapter$1;

    invoke-direct {v3, p0, p1}, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$CategoryListAdapter$1;-><init>(Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$CategoryListAdapter;I)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v1, v1, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$CategoryListAdapter$ViewHolder;->b:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/facebook/katana/model/PageTopic;->displayName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    return-object p2

    .line 213
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$CategoryListAdapter$ViewHolder;

    move-object v1, v0

    goto :goto_0
.end method
