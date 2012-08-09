.class public Lcom/facebook/katana/view/vault/PickerGalleryView;
.super Landroid/widget/RelativeLayout;
.source "PickerGalleryView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/facebook/katana/activity/media/SelectionState$SelectionListener;


# instance fields
.field private final a:Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter;

.field private b:Landroid/widget/CheckBox;

.field private c:Lcom/facebook/katana/model/MediaItem;

.field private d:Landroid/widget/Gallery;

.field private e:Lcom/facebook/katana/activity/media/SelectionState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const v0, 0x7f0300d4

    invoke-static {p1, v0, p0}, Lcom/facebook/katana/view/vault/PickerGalleryView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 35
    const v0, 0x7f0801fe

    invoke-virtual {p0, v0}, Lcom/facebook/katana/view/vault/PickerGalleryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Gallery;

    iput-object v0, p0, Lcom/facebook/katana/view/vault/PickerGalleryView;->d:Landroid/widget/Gallery;

    .line 37
    new-instance v0, Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter;

    iget-object v1, p0, Lcom/facebook/katana/view/vault/PickerGalleryView;->d:Landroid/widget/Gallery;

    invoke-direct {v0, p1, v1}, Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter;-><init>(Landroid/content/Context;Landroid/widget/AdapterView;)V

    iput-object v0, p0, Lcom/facebook/katana/view/vault/PickerGalleryView;->a:Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter;

    .line 38
    iget-object v0, p0, Lcom/facebook/katana/view/vault/PickerGalleryView;->d:Landroid/widget/Gallery;

    iget-object v1, p0, Lcom/facebook/katana/view/vault/PickerGalleryView;->a:Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 39
    iget-object v0, p0, Lcom/facebook/katana/view/vault/PickerGalleryView;->d:Landroid/widget/Gallery;

    invoke-virtual {v0, p0}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 41
    const v0, 0x7f08014d

    invoke-virtual {p0, v0}, Lcom/facebook/katana/view/vault/PickerGalleryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/facebook/katana/view/vault/PickerGalleryView;->b:Landroid/widget/CheckBox;

    .line 42
    iget-object v0, p0, Lcom/facebook/katana/view/vault/PickerGalleryView;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 43
    return-void
.end method

.method private a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/facebook/katana/view/vault/PickerGalleryView;->b:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 87
    iget-object v0, p0, Lcom/facebook/katana/view/vault/PickerGalleryView;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 88
    iget-object v0, p0, Lcom/facebook/katana/view/vault/PickerGalleryView;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 89
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/facebook/katana/view/vault/PickerGalleryView;->c:Lcom/facebook/katana/model/MediaItem;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/facebook/katana/view/vault/PickerGalleryView;->e:Lcom/facebook/katana/activity/media/SelectionState;

    iget-object v1, p0, Lcom/facebook/katana/view/vault/PickerGalleryView;->c:Lcom/facebook/katana/model/MediaItem;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/media/SelectionState;->a(Lcom/facebook/katana/model/MediaItem;)V

    .line 74
    :cond_0
    return-void
.end method

.method public final a(JZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/facebook/katana/view/vault/PickerGalleryView;->c:Lcom/facebook/katana/model/MediaItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/view/vault/PickerGalleryView;->c:Lcom/facebook/katana/model/MediaItem;

    invoke-virtual {v0}, Lcom/facebook/katana/model/MediaItem;->a()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/view/vault/PickerGalleryView;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eq v0, p3, :cond_0

    .line 114
    invoke-direct {p0, p3}, Lcom/facebook/katana/view/vault/PickerGalleryView;->a(Z)V

    .line 116
    :cond_0
    return-void
.end method

.method public final a(Lcom/facebook/katana/model/MediaItem;)V
    .locals 6
    .parameter

    .prologue
    .line 61
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/facebook/katana/view/vault/PickerGalleryView;->a:Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/facebook/katana/view/vault/PickerGalleryView;->a:Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/MediaItem;

    invoke-virtual {v0}, Lcom/facebook/katana/model/MediaItem;->a()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/facebook/katana/model/MediaItem;->a()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/facebook/katana/view/vault/PickerGalleryView;->d:Landroid/widget/Gallery;

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setSelection(I)V

    .line 67
    :cond_0
    return-void

    .line 61
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/facebook/katana/view/vault/PickerGalleryView;->c:Lcom/facebook/katana/model/MediaItem;

    if-nez v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 102
    :cond_0
    if-eqz p2, :cond_1

    .line 103
    iget-object v0, p0, Lcom/facebook/katana/view/vault/PickerGalleryView;->e:Lcom/facebook/katana/activity/media/SelectionState;

    iget-object v1, p0, Lcom/facebook/katana/view/vault/PickerGalleryView;->c:Lcom/facebook/katana/model/MediaItem;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/media/SelectionState;->a(Lcom/facebook/katana/model/MediaItem;)V

    goto :goto_0

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/view/vault/PickerGalleryView;->e:Lcom/facebook/katana/activity/media/SelectionState;

    iget-object v1, p0, Lcom/facebook/katana/view/vault/PickerGalleryView;->c:Lcom/facebook/katana/model/MediaItem;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/media/SelectionState;->b(Lcom/facebook/katana/model/MediaItem;)V

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 79
    iget-object v0, p0, Lcom/facebook/katana/view/vault/PickerGalleryView;->a:Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter;

    invoke-virtual {v0, p3}, Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/MediaItem;

    .line 80
    iput-object v0, p0, Lcom/facebook/katana/view/vault/PickerGalleryView;->c:Lcom/facebook/katana/model/MediaItem;

    .line 81
    iget-object v1, p0, Lcom/facebook/katana/view/vault/PickerGalleryView;->e:Lcom/facebook/katana/activity/media/SelectionState;

    invoke-virtual {v1, v0}, Lcom/facebook/katana/activity/media/SelectionState;->c(Lcom/facebook/katana/model/MediaItem;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/katana/view/vault/PickerGalleryView;->a(Z)V

    .line 82
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 93
    return-void
.end method

.method public setMedia(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/MediaItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/facebook/katana/view/vault/PickerGalleryView;->a:Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter;->a(Ljava/util/List;)V

    .line 48
    return-void
.end method

.method public setSelectionState(Lcom/facebook/katana/activity/media/SelectionState;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/facebook/katana/view/vault/PickerGalleryView;->e:Lcom/facebook/katana/activity/media/SelectionState;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/facebook/katana/view/vault/PickerGalleryView;->e:Lcom/facebook/katana/activity/media/SelectionState;

    invoke-virtual {v0, p0}, Lcom/facebook/katana/activity/media/SelectionState;->b(Lcom/facebook/katana/activity/media/SelectionState$SelectionListener;)V

    .line 55
    :cond_0
    iput-object p1, p0, Lcom/facebook/katana/view/vault/PickerGalleryView;->e:Lcom/facebook/katana/activity/media/SelectionState;

    .line 56
    iget-object v0, p0, Lcom/facebook/katana/view/vault/PickerGalleryView;->e:Lcom/facebook/katana/activity/media/SelectionState;

    invoke-virtual {v0, p0}, Lcom/facebook/katana/activity/media/SelectionState;->a(Lcom/facebook/katana/activity/media/SelectionState$SelectionListener;)V

    .line 57
    return-void
.end method
