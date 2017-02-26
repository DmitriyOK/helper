package ru.avito.services.impl;

import org.springframework.beans.factory.annotation.Autowired;
import ru.avito.model.tags.Tag;
import ru.avito.model.tags.TagGroup;
import ru.avito.repository.TagGroupRepository;
import ru.avito.repository.TagRepository;
import ru.avito.services.TagService;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * Created by Dmitriy on 22.02.2017.
 */

public class TagServiceImpl implements TagService {


    @Autowired
    TagRepository tagRepository;

    @Autowired
    TagGroupRepository tagGroupRepository;

    @Override
    public Tag save(Tag tag) {
        Set<TagGroup> tagGroups = new HashSet();
        tagGroups.add(tagGroupRepository.findOne(1));
        tag.setTagGroups(tagGroups);
        return tagRepository.saveAndFlush(tag);
    }

    @Override
    public void delete(int id) {
        tagRepository.delete(id);
    }

    @Override
    public Tag edit(Tag actualTag) {

        Tag currentTag = tagRepository.findOne(actualTag.getId());
        currentTag.setName(actualTag.getName());
        currentTag.setDescription(actualTag.getDescription());
        currentTag.setValue(actualTag.getValue());

        return tagRepository.saveAndFlush(currentTag);
    }

    @Override
    public Tag findOne(int id) {
        return tagRepository.findOne(id);
    }

    @Override
    public Tag findByName(String name) {
        return tagRepository.findByName(name);
    }

    @Override
    public List<Tag> findAll() {
        List<Tag> tags=tagRepository.findAll();
        return tags;
    }
}