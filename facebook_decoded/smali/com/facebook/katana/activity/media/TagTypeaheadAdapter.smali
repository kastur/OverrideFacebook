.class public Lcom/facebook/katana/activity/media/TagTypeaheadAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TagTypeaheadAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/facebook/katana/activity/media/TagTypeaheadAdapter$User;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/widget/Filter;

.field private b:Lcom/facebook/katana/activity/media/TagTypeaheadAdapter$UserExclusionFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 51
    const v0, 0x7f0300cd

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 45
    new-instance v0, Lcom/facebook/katana/activity/media/TagTypeaheadAdapter$NameFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/katana/activity/media/TagTypeaheadAdapter$NameFilter;-><init>(Lcom/facebook/katana/activity/media/TagTypeaheadAdapter;B)V

    iput-object v0, p0, Lcom/facebook/katana/activity/media/TagTypeaheadAdapter;->a:Landroid/widget/Filter;

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/TagTypeaheadAdapter;)Lcom/facebook/katana/activity/media/TagTypeaheadAdapter$UserExclusionFilter;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/facebook/katana/activity/media/TagTypeaheadAdapter;->b:Lcom/facebook/katana/activity/media/TagTypeaheadAdapter$UserExclusionFilter;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/activity/media/TagTypeaheadAdapter$UserExclusionFilter;)Lcom/facebook/katana/activity/media/TagTypeaheadAdapter;
    .locals 0
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/facebook/katana/activity/media/TagTypeaheadAdapter;->b:Lcom/facebook/katana/activity/media/TagTypeaheadAdapter$UserExclusionFilter;

    .line 160
    return-object p0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/facebook/katana/activity/media/TagTypeaheadAdapter;->a:Landroid/widget/Filter;

    return-object v0
.end method
